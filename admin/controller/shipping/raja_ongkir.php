<?php
class ControllerShippingRajaOngkir extends Controller {
  private $error = array();
 
  public function index() {
    $this->load->language('shipping/raja_ongkir');
 
    $this->document->setTitle($this->language->get('heading_title'));
 
    $this->load->model('setting/setting');
 
    if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
      $this->model_setting_setting->editSetting('raja_ongkir', $this->request->post);
 
      $this->session->data['success'] = $this->language->get('text_success');
 
      $this->response->redirect($this->url->link('extension/shipping', 'token=' . $this->session->data['token'], 'SSL'));
    }
 
    $data['heading_title'] = $this->language->get('heading_title');
     
    $data['text_edit'] = $this->language->get('text_edit');
    $data['text_enabled'] = $this->language->get('text_enabled');
    $data['text_disabled'] = $this->language->get('text_disabled');
    $data['text_all_zones'] = $this->language->get('text_all_zones');
    $data['text_none'] = $this->language->get('text_none');
    $data['entry_type_api'] = $this->language->get('entry_type_api');
    $data['entry_key_api'] = $this->language->get('entry_key_api');
 
    $data['entry_cost'] = $this->language->get('entry_cost');
    $data['entry_tax_class'] = $this->language->get('entry_tax_class');
    $data['entry_geo_zone'] = $this->language->get('entry_geo_zone');
    $data['entry_status'] = $this->language->get('entry_status');
    $data['entry_sort_order'] = $this->language->get('entry_sort_order');
 
    $data['button_save'] = $this->language->get('button_save');
    $data['button_cancel'] = $this->language->get('button_cancel');
 
    if (isset($this->error['warning'])) {
      $data['error_warning'] = $this->error['warning'];
    } else {
      $data['error_warning'] = '';
    }

    if (isset($this->error['error_raja_ongkir_key_api'])) {
        $data['error_raja_ongkir_key_api'] = $this->error['error_raja_ongkir_key_api'];
    } else {
        $data['error_raja_ongkir_key_api'] = '';
    } 
 
    $data['breadcrumbs'] = array();
 
    $data['breadcrumbs'][] = array(
      'text' => $this->language->get('text_home'),
      'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
    );
 
    $data['breadcrumbs'][] = array(
      'text' => $this->language->get('text_shipping'),
      'href' => $this->url->link('extension/shipping', 'token=' . $this->session->data['token'], 'SSL')
    );
 
    $data['breadcrumbs'][] = array(
      'text' => $this->language->get('heading_title'),
      'href' => $this->url->link('shipping/raja_ongkir', 'token=' . $this->session->data['token'], 'SSL')
    );
 
    $data['action'] = $this->url->link('shipping/raja_ongkir', 'token=' . $this->session->data['token'], 'SSL');
 
    $data['cancel'] = $this->url->link('extension/shipping', 'token=' . $this->session->data['token'], 'SSL');
 
    // if (isset($this->request->post['raja_ongkir_cost'])) {
    //   $data['raja_ongkir_cost'] = $this->request->post['raja_ongkir_cost'];
    // } else {
    //   $data['raja_ongkir_cost'] = $this->config->get('raja_ongkir_cost');
    // }

    if (isset($this->request->post['raja_ongkir_key_api'])) {
        $data['raja_ongkir_key_api'] = $this->request->post['raja_ongkir_key_api'];
    } else {
        $data['raja_ongkir_key_api'] = $this->config->get('raja_ongkir_key_api');
    }  

    if (isset($this->request->post['raja_ongkir_type_api'])) {
        $data['raja_ongkir_type_api'] = $this->request->post['raja_ongkir_type_api'];
    } else {
        $data['raja_ongkir_type_api'] = $this->config->get('raja_ongkir_type_api');
    }  
 
    // if (isset($this->request->post['raja_ongkir_tax_class_id'])) {
    //   $data['raja_ongkir_tax_class_id'] = $this->request->post['raja_ongkir_tax_class_id'];
    // } else {
    //   $data['raja_ongkir_tax_class_id'] = $this->config->get('raja_ongkir_tax_class_id');
    // }
 
    // if (isset($this->request->post['raja_ongkir_geo_zone_id'])) {
    //   $data['raja_ongkir_geo_zone_id'] = $this->request->post['raja_ongkir_geo_zone_id'];
    // } else {
    //   $data['raja_ongkir_geo_zone_id'] = $this->config->get('raja_ongkir_geo_zone_id');
    // }
 
    if (isset($this->request->post['raja_ongkir_status'])) {
      $data['raja_ongkir_status'] = $this->request->post['raja_ongkir_status'];
    } else {
      $data['raja_ongkir_status'] = $this->config->get('raja_ongkir_status');
    }
 
    if (isset($this->request->post['raja_ongkir_sort_order'])) {
      $data['raja_ongkir_sort_order'] = $this->request->post['raja_ongkir_sort_order'];
    } else {
      $data['raja_ongkir_sort_order'] = $this->config->get('raja_ongkir_sort_order');
    }
 
    $this->load->model('localisation/tax_class');
    $data['tax_classes'] = $this->model_localisation_tax_class->getTaxClasses();
 
    $this->load->model('localisation/geo_zone');
    $data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();
 
    $data['header'] = $this->load->controller('common/header');
    $data['column_left'] = $this->load->controller('common/column_left');
    $data['footer'] = $this->load->controller('common/footer');
 
    $this->response->setOutput($this->load->view('shipping/raja_ongkir.tpl', $data));
  }
 
  protected function validate() {
    if (!$this->user->hasPermission('modify', 'shipping/raja_ongkir')) {
      $this->error['warning'] = $this->language->get('error_permission');
    }
    if (!$this->request->post['raja_ongkir_key_api']) {
            $this->error['error_raja_ongkir_key_api'] = $this->language->get('error_raja_ongkir_key_api');
    }
 
    return !$this->error;
  }
}