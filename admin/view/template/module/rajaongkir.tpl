<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-helloworld" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-helloworld" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="key_api_input_field"><?php echo $entry_key_api; ?></label>
            <div class="col-sm-10">
              <input type="text" name="raja_ongkir_key_api" value="<?php echo $raja_ongkir_key_api;?>" class="form-control">
              <?php if ($error_raja_ongkir_key_api) { ?>
              <div class="text-danger"><?php echo $error_raja_ongkir_key_api; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="base_url_api_input_field"><?php echo $entry_type_api; ?></label>
            <div class="col-sm-10">
              <select name="raja_ongkir_type_api" class="form-control">
                <option value="1" <?php echo ($raja_ongkir_type_api)==1?"selected='selected'":"";?>>Starter</option>
                <option value="2" <?php echo ($raja_ongkir_type_api)==2?"selected='selected'":"";?>>Basic</option>
                <option value="3" <?php echo ($raja_ongkir_type_api)==3?"selected='selected'":"";?>>Pro</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="raja_ongkir_status" id="input-status" class="form-control">
                <?php if ($raja_ongkir_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>          
        </form>
      </div>
  </div>
  </div>
</div>

<?php echo $footer; ?>