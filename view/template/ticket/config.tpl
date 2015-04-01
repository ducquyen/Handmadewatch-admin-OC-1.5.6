<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/ticket.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
       <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td><span class="required">*</span> <?php echo $entry_order; ?></td>
            <td>
            	<input <?php if(!$order_status) echo "checked"; ?> type="radio" name="order_status" value="0" /> 
            	<span><?php echo $entry_status_disable; ?></span>
            	<input <?php if($order_status) echo "checked"; ?> type="radio" name="order_status" value="1" /> 
            	<span><?php echo $entry_status_enable; ?></span>
	        </td>
          </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_required; ?></td>
            <td>
              <input <?php if(!$order_required) echo "checked"; ?> type="radio" name="order_required" value="0" /> 
              <span><?php echo $entry_status_disable; ?></span>
              <input <?php if($order_required) echo "checked"; ?> type="radio" name="order_required" value="1" /> 
              <span><?php echo $entry_status_enable; ?></span>
          </td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>

<?php echo $footer; ?> 