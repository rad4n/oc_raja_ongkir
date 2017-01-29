<?php
class ModelShippingIndoShip extends Model {
	function getQuote($address) {
		$this->load->language('shipping/indoship');

		//Begin get total shopping for minimal shopping
		$order_data['totals'] = array();
		$total = 0;
		$taxes = $this->cart->getTaxes();

		$this->load->model('extension/extension');

		$sort_order = array();

		$results = $this->model_extension_extension->getExtensions('total');

		foreach ($results as $key => $value) {
			$sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
		}

		array_multisort($sort_order, SORT_ASC, $results);

		foreach ($results as $result) {
			if ($this->config->get($result['code'] . '_status')) {
				$this->load->model('total/' . $result['code']);

				$this->{'model_total_' . $result['code']}->getTotal($order_data['totals'], $total, $taxes);
			}
		}
		$shopping_total = $order_data['totals'][0]['value'];
		//End get total shoppiing for minimal shopping

		$rajaongkir = new rajaOngkir();
		if ($this->config->get('indoship_status')) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('indo_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");	
			if (!$this->config->get('indoship_geo_zone_id')) {
			$status = true;
			} elseif ($cost->num_rows) {
				$status = true;
			} else {
				$status = false;
			}
		} else {
			$status = false;
		}

		$method_data = array();

		if ($status) {
			$quote_data = array();

			$this->load->library('rajaongkir');
			$rajaongkir = new rajaOngkir();

			//kondisional berat?
			$cart_weight = $this->cart->getWeight();
			//$weight = ( ($this->cart->getWeight() < 1) ? 1 : ceil($this->cart->getWeight()) );
			/*$weight = ( (float)$cart_weight >=1 ? (float)$cart_weight : 1.0);
				
			$fraction = round(($weight - (int)$weight) , 2);
			if(abs($fraction-0) > 0.3){
				$weight = round($weight);
			}else{
				$weight = floor($weight);
			}

			$weightText = ($weight >= 1 ? $weight : 1);*/
			$beratBarang = $cart_weight * 1;
			if ($beratBarang=='0'||$beratBarang==''||$beratBarang==NULL) {
				$beratBarang = '1';
			}
			
			$type_account = $this->config->get('indoship_type_api');
			if($type_account==3)$destination_type = 'subdistrict';
			else $destination_type = 'city';

			//Show Destinasi/Originasi
			$addres = $rajaongkir->allcity();
			$addrss = json_decode($addres,true);
			$add = $addrss['rajaongkir']['results'];
			
			
					foreach ($add as $key) {
					if ($key['city_name'] == $address['city']){
						if($type_account==3) $desti = $address['kecamatan'];
						else $desti = $address['city'];
					}else if ($key['city_id'] == $this->config->get('indoship_origins')) {
						$origi = $key['city_name'];
					}else if($key['city_id'] == $address['city']){
						if($type_account==3) {
							 if (!ctype_alpha($address['kecamatan'])){
							 	$id_kecamatan = $rajaongkir->subDistrict("",$address['kecamatan']);
							 	$r = json_decode($id_kecamatan,true);
							 	$desti = $r['rajaongkir']['results']['subdistrict_name'];

							 }
							else $desti = $address['kecamatan'];
						}
						else $desti = $key['city_name'];
					}else{
						$desti = $address['kecamatan'];
					}
					}
			
			//Menampilkan asal dan tujuan kiriman
			$display_origin_destination = $this->config->get('indoship_destinasi');
			//$display_origin_destination = ((int)$display_origin_destination == 1 || $display_origin_destination == 'y' ? true : false);
			if($display_origin_destination){
				$mtitle = sprintf($this->language->get('text_title'), $origi, $desti, $beratBarang);
			}else{
				$mtitle = $this->language->get('text_title_no_od');
			}

			//Menghitung tarif ongkir dengan parameter origin,destinasi,courier,dan weight
			$origin = $this->config->get('indoship_origins');
			
			if(!empty($address['kecamatan'])) {
				$destinasi = $address['kecamatan'];
				$key = "jne:pos:tiki";
				$courier = "jne:pos:tiki";
			}
			else {
				foreach ($add as $key) {
					if ($this->session->data['shipping_address']['city'] == $key['city_id']) {
						$destinasi = $this->session->data['shipping_address']['city'];
					}else{
						$destinasi = $key['city_id'];
					}
				}
			}


			$courier = $this->config->get('indoship_services');
			if($courier=='all'){
				$courier = array('jne','tiki','pos');

				//foreach ($courier as $key) {
					$hitungongkos = $rajaongkir->hitungOngkir($origin,$destinasi,$beratBarang,$key,'city',$destination_type);
				//}
			}
			else $hitungongkos = $rajaongkir->hitungOngkir($origin,$destinasi,$beratBarang,$courier,'city',$destination_type);

			if(is_array($hitungongkos)){
				foreach ($hitungongkos as $key => $value) {
					$ongkir = json_decode($value,true);
					$hitungOngkir[] = $ongkir['rajaongkir']['results'];
				}
			}
			else {
				$ongkir = json_decode($hitungongkos,true);
				$hitungOngkir = $ongkir['rajaongkir']['results'];
			}
			
			if (!empty($hitungOngkir)) {pre($hitungOngkir);
				//if(is_array($hitungongkos)){
					// foreach ($hitungOngkir as $key => $service) {
					// 	if ($key[0]['code']=='pos') {
					// 		$kurir = $key[0]['name'];
					// 		//print_r($kurir);
					// 	}elseif ($key[0]['code']=='tiki') {
					// 		$kurir = $key[0]['name'];
					// 		//print_r($kurir);
					// 	}else{
					// 		$kurir = $key[0]['name'];
					// 		//print_r($kurir);
					// 	}
					// 	foreach ($service['costs'] as $value) {
					// 		$services = $value['service'];
					// 		///print_r($services);
					// 		$description = $value['description'];
					// 		//print_r($description);
						
					// 		foreach ($value['cost'] as $costs) {
					// 			$ongkos = $costs['value'];
					// 			//print_r($ongkos);
					// 			if ($costs['etd']=='') {
					// 				$etd = "-, ";
					// 			}elseif ($costs['note']==''){
					// 				$note = "-";
					// 			}elseif (empty($costs['etd'])){
					// 				$etd = "";
					// 			}else{
					// 				$etd = $costs['etd'].' Hari, ';
					// 				$note = $costs['note'];
					// 			}
					// 				//getAllQuotes
					// 				$title = '<b>Kurir: </b>'.$kurir.', <b>Servis: </b>'.$services.', <b>Deskripsi: </b> '.$description.', <b>Catatan: </b> '.$note;
					// 				$rname = 'indoship'.$description;
					// 				$quote_data[$rname] = array(
					// 				'code'         => 'indoship.'.$rname,
					// 				'title'        => $title,
					// 				'cost'         => $ongkos,
					// 				'tax_class_id' => $this->config->get('indoship_tax_class_id'),
					// 				'text'         => '<b>'.$this->currency->format($ongkos,'',1).'</b>'
					// 				);
					// 				//return $quote_data;
					// 				//print_r($quote_data);
					// 		}
					// 	}
					// }
				//}
				// else {

						foreach ($hitungOngkir as $service) {//pre($service);
						// if ($service['code']=='pos') {
						// 	$kurir = $service['name'];
						// 	//print_r($kurir);
						// }elseif ($service['code']=='tiki') {
						// 	$kurir = $service['name'];
						// 	//print_r($kurir);
						// }else{
						// 	$kurir = $service['name'];
						// 	//print_r($kurir);
						// }
						foreach ($service['costs'] as $value) {//pre($value);
							//$services = $value['service'];
							///print_r($services);
							//$description = $value['description'];
							//print_r($description);


							//get value of setting handling fee and minimum belanja
							global $loader, $registry;
					    	$loader->model('setting/setting');
					    	$model = $registry->get('model_setting_setting');
							$setting = $model->getSetting('indoship'); 

							
						
							foreach ($value['cost'] as $costs) {
								if($service['code']=="jne"){
									if($value['service'] == "CTC" AND $shopping_total < $setting['indoship_minimum_belanja_jne_oke']) continue;
								}

								if($service['code']=="jne"){
									if($value['service'] == "CTCYES" AND $shopping_total < $setting['indoship_minimum_belanja_jne_yes']) continue;
								}

								if($service['code']=="jne"){
									if($value['service'] == "JTR" AND $shopping_total < $setting['indoship_minimum_belanja_jne_trucking']) continue;
								}

								if($service['code']=="jne"){
									if($value['service'] == "JTR<150" AND $shopping_total < $setting['indoship_minimum_belanja_jne_trucking']) continue;
								}

								if($service['code']=="jne"){
									if($value['service'] == "JTR>250" AND $shopping_total < $setting['indoship_minimum_belanja_jne_trucking']) continue;
								}

								if($service['code']=="tiki"){
									if($value['service'] == "REG" AND $shopping_total < $setting['indoship_minimum_belanja_tiki_regular']) continue;
								}
								$ongkos = $costs['value'] + $setting['indoship_handling_fee'];
								if ($costs['etd']=='') {
									$etd = "-, ";
								}elseif ($costs['note']==''){
									$note = "-";
								}elseif (empty($costs['etd'])){
									$etd = "";
								}else{
									$etd = $costs['etd'].' Hari, ';
									$note = $costs['note'];
								}

									//getAllQuotes
									$title = '<b>Kurir: </b>'.$service['name'].', <b>Servis: </b>'.$value['service'].', <b>Deskripsi: </b> '.$value['description'].', <b>Catatan: </b> '.$costs['note'];
									$rname = 'indoship'.$value['description'];
									$quote_data[$rname] = array(
									'code'         => 'indoship.'.$rname,
									'title'        => $title,
									'cost'         => $ongkos,
									'tax_class_id' => $this->config->get('indoship_tax_class_id'),
									'text'         => '<b>'.$this->currency->format($this->tax->calculate($ongkos, $this->config->get('indoship_tax_class_id'), $this->config->get('config_tax'))).'</b>'
									);
									//return $quote_data;
									//print_r($quote_data);
							}
						}
					}
				// }
				//echo($cart_weight);
			}
			if(count($quote_data) < 1){
				//if($Jne->invalid_dest_code){
				//    $error_msg = $this->language->get('error_destination_city');
				//}else{
				//if($enable_inform_later){
				$cost = 0;
				$quote_data['indoship_origins_inform_later'] = array(
							'code'           => 'indoship.indoship_origins_inform_later',
							'title'        => $this->language->get('text_description_indoship_inform_later'),
							'cost'         => $cost,
							'tax_class_id'  => $this->config->get('indoship_tax_class_id'),
							'text'         => $this->language->get('text_cost_inform_later'),
				);
				
				//}else{
				//    $error_msg = $this->language->get('error_destination_city');
				//}
				//}
			}

		
		$method_data = array(
				'id'       => 'indoship',
				'code'       => 'indoship',
				'title'      => $mtitle,
				'quote'      => $quote_data,
				'sort_order' => $this->config->get('indoship_sort_order'),
				'error'      => false
			);
		}
		//print_r($method_data);

		return $method_data;
	}
}