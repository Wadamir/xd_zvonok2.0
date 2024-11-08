<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-callback" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
            </div>
            <h1 style="display:block;font-size: 20px;"><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-html">
            <?php if ($error_warning) { ?>
                <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                </div>
            <?php } ?>
            <ul class="nav nav-tabs mb-0">
                <li class="active"><a href="#settings_main" data-toggle="tab"><?php echo $settings_main; ?></a></li>
                <li><a href="#settings_style" data-toggle="tab"><?php echo $settings_style; ?></a></li>
                <li class="hidden"><a href="#settings_sms" data-toggle="tab"><?php echo $settings_sms; ?></a></li>
                <li><a href="#settings_analytics" data-toggle="tab"><?php echo $settings_analytics; ?></a></li>
                <li><a href="#text_tab_help" data-toggle="tab"><?php echo $text_tab_help; ?></a></li>
            </ul>
            <div class="tab-content">
                <div id="settings_main" class="tab-pane fade in active">
                    <div class="panel panel-default" style="border-top:0;">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6 col-xs-12">
                                    <label class="control-label mb-10"><?php echo $entry_button_name; ?></label>
                                    <?php foreach ($languages as $language) { ?>
                                        <?php $language_id = $language['language_id']; ?>
                                        <div class="input-group mb-15">
                                            <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                                            <input type="text" name="callback[button_name][<?php echo $language_id; ?>]" placeholder="<?php echo $entry_button_name; ?>" value="<?php echo isset($callback['button_name'][$language_id]) ? $callback['button_name'][$language_id] : ''; ?>" class="form-control" />
                                        </div>
                                    <?php } ?>
                                </div>
                                <div class="col-lg-6 col-xs-12">
                                    <label class="control-label mb-10"><?php echo $entry_success_field; ?> (<?php echo $success_field_tooltip; ?>)</label>
                                    <?php foreach ($languages as $language) { ?>
                                        <?php $language_id = $language['language_id']; ?>
                                        <div class="input-group mb-15">
                                            <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                                            <input type="text" name="callback[success_field][<?php echo $language_id; ?>]" placeholder="<?php echo $entry_success_field; ?>" value="<?php echo isset($callback['success_field'][$language_id]) ? $callback['success_field'][$language_id] : ''; ?>" class="form-control" />
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="row" style="border-top: 1px solid #e8e8e8; padding-top:15px;">
                                <div class="col-lg-6 col-xs-12">
                                    <div class="row inline-input-group">
                                        <label class="col-lg-3 control-label"><?php echo $field1_title; ?></label>
                                        <div class="col-lg-9">
                                            <select name="callback[field1_status]" class="form-control">
                                                <?php if ($callback['field1_status'] == '1') { ?>
                                                    <option value="0"><?php echo $text_disabled; ?></option>
                                                    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                                    <option value="2"><?php echo $field_required; ?></option>
                                                <?php } elseif ($callback['field1_status'] == '2') { ?>
                                                    <option value="0"><?php echo $text_disabled; ?></option>
                                                    <option value="1"><?php echo $text_enabled; ?></option>
                                                    <option value="2" selected="selected"><?php echo $field_required; ?></option>
                                                <?php } else { ?>
                                                    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                                    <option value="1"><?php echo $text_enabled; ?></option>
                                                    <option value="2"><?php echo $field_required; ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-xs-12">
                                    <div class="row inline-input-group">
                                        <label class="col-lg-3 control-label"><?php echo $field2_title; ?></label>
                                        <div class="col-lg-9">
                                            <select name="callback[field2_status]" class="form-control">
                                                <?php if ($callback['field2_status'] == '1') { ?>
                                                    <option value="0"><?php echo $text_disabled; ?></option>
                                                    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                                    <option value="2"><?php echo $field_required; ?></option>
                                                <?php } elseif ($callback['field2_status'] == '2') { ?>
                                                    <option value="0"><?php echo $text_disabled; ?></option>
                                                    <option value="1"><?php echo $text_enabled; ?></option>
                                                    <option value="2" selected="selected"><?php echo $field_required; ?></option>
                                                <?php } else { ?>
                                                    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                                    <option value="1"><?php echo $text_enabled; ?></option>
                                                    <option value="2"><?php echo $field_required; ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="padding-top:15px;">
                                <div class="col-lg-6 col-xs-12">
                                    <div class="row inline-input-group">
                                        <label class="col-lg-3 control-label"><?php echo $field3_title; ?></label>
                                        <div class="col-lg-9">
                                            <select name="callback[field3_status]" class="form-control">
                                                <?php if ($callback['field3_status'] == '1') { ?>
                                                    <option value="0"><?php echo $text_disabled; ?></option>
                                                    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                                    <option value="2"><?php echo $field_required; ?></option>
                                                <?php } elseif ($callback['field3_status'] == '2') { ?>
                                                    <option value="0"><?php echo $text_disabled; ?></option>
                                                    <option value="1"><?php echo $text_enabled; ?></option>
                                                    <option value="2" selected="selected"><?php echo $field_required; ?></option>
                                                <?php } else { ?>
                                                    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                                    <option value="1"><?php echo $text_enabled; ?></option>
                                                    <option value="2"><?php echo $field_required; ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-xs-12">
                                    <div class="row inline-input-group">
                                        <label class="col-lg-3 control-label"><?php echo $field4_title; ?></label>
                                        <div class="col-lg-9">
                                            <select name="callback[captcha]" class="form-control">
                                                <?php foreach ($captchas as $captcha) { ?>
                                                    <?php if (!isset($callback['captcha']) || $callback['captcha'] === '') { ?>
                                                        <option value="" selected="selected"><?php echo $text_disabled; ?></option>
                                                    <?php } else { ?>
                                                        <option value=""><?php echo $text_disabled; ?></option>
                                                    <?php } ?>
                                                    <?php if (isset($callback['captcha']) && ($captcha['value'] === $callback['captcha'])) { ?>
                                                        <option value="<?php echo $captcha['value']; ?>" selected="selected"><?php echo $captcha['text']; ?></option>
                                                    <?php } else { ?>
                                                        <option value="<?php echo $captcha['value']; ?>"><?php echo $captcha['text']; ?></option>
                                                    <?php } ?>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row inline-input-group" style="padding-top:15px;">
                                <label class="col-lg-3 control-label" for="agree_status"><?php echo $agree_title; ?></label>
                                <div class="col-lg-9">
                                    <select name="callback[agree_status]" id="agree_status" class="form-control">
                                        <option value="0"><?php echo $text_disabled; ?></option>
                                        <?php foreach ($informations as $information) { ?>
                                            <?php if ($information['information_id'] === $callback['agree_status']) { ?>
                                                <option value="<?php echo $information['information_id']; ?>" selected="selected"><?php echo $information['title']; ?></option>
                                            <?php } else { ?>
                                                <option value="<?php echo $information['information_id']; ?>"><?php echo $information['title']; ?></option>
                                            <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="row inline-input-group" style="padding-top:15px;">
                                <label class="col-lg-3 control-label" for="validation_type"><?php echo $entry_validation_type; ?></label>
                                <div class="col-lg-9">
                                    <select name="callback[validation_type]" id="validation_type" class="form-control">
                                        <?php if ($callback['validation_type'] == $value_validation_type1) { ?>
                                            <option value="0"><?php echo $text_validation_type0; ?></option>
                                            <option value="<?php echo $value_validation_type1; ?>" selected="selected"><?php echo $text_validation_type1; ?></option>
                                            <option value="<?php echo $value_validation_type2; ?>"><?php echo $text_validation_type2; ?></option>
                                        <?php } else if ($callback['validation_type'] == $value_validation_type2) { ?>
                                            <option value="0"><?php echo $text_validation_type0; ?></option>
                                            <option value="<?php echo $value_validation_type1; ?>"><?php echo $text_validation_type1; ?></option>
                                            <option value="<?php echo $value_validation_type2; ?>" selected="selected"><?php echo $text_validation_type2; ?></option>
                                        <?php } else { ?>
                                            <option value="0" selected="selected"><?php echo $text_validation_type0; ?></option>
                                            <option value="<?php echo $value_validation_type1; ?>"><?php echo $text_validation_type1; ?></option>
                                            <option value="<?php echo $value_validation_type2; ?>"><?php echo $text_validation_type2; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="row" style="padding-top:15px; margin-top: 15px; border-top: 1px solid #e8e8e8;">
                                <div class="col-xs-12">
                                    <fieldset class="checkbox-switcher">
                                        <span class="checkbox-switcher-title h6"><?php echo $entry_status; ?></span>
                                        <div class="form-check-switcher-wrapper switcher-on-off">
                                            <span class="custom-checkbox-input-switcher-before"><?php echo $text_disabled; ?></span>
                                            <div class="form-check form-check-inline form-check-switcher">
                                                <input type="checkbox" name="callback[input-status]" value="1" id="input-status" class="custom-checkbox-input-switcher" <?php echo (isset($callback['input-status']) && $callback['input-status'] === '1') ? 'checked="checked"' : '' ?> />
                                                <label class="custom-checkbox-input-switcher-label" for="input-status"><?php echo $entry_status; ?></label>
                                            </div>
                                            <span class="custom-checkbox-input-switcher-after"><?php echo $text_enabled; ?></span>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="settings_style" class="tab-pane fade">
                    <div class="panel panel-default" style="border-top:0;">
                        <div class="panel-heading hidden">
                            <h2><?php echo $tab_styles; ?></h2>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6 col-xs-12">
                                    <label class="control-label mb-10"><?php echo $tab_styles_button_color; ?></label>
                                    <div class="color_input">
                                        <div class="input-group">
                                            <span class="input-group-addon" style="border-bottom-right-radius:0; border-top-right-radius:0; padding: 4px 8px;"><i class="fa fa-circle fa-2x fa-fw" aria-hidden="true" style="color:<?php echo $callback['button_color']; ?>;"></i></span>
                                            <input type="text" name="callback[button_color]" value="<?php echo isset($callback['button_color']) ? $callback['button_color'] : ''; ?>" class="form-control col-xs-8" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-xs-12 text-center">
                                    <a href="#" id="callback_phone_button" class="btn btn-link">
                                        <div class="circlephone circle_color" style="transform-origin: center;background-color:<?php echo isset($callback['button_color']) ? $callback['button_color'] : ''; ?>;border-color:<?php echo isset($callback['button_color']) ? $callback['button_color'] : ''; ?>"></div>
                                        <div class="circle-fill circle_color" style="transform-origin: center;background-color:<?php echo isset($callback['button_color']) ? $callback['button_color'] : ''; ?>"></div>
                                        <div class="img-circle circle_color" style="transform-origin: center;background-color:<?php echo isset($callback['button_color']) ? $callback['button_color'] : ''; ?>">
                                            <div class="img-circleblock" style="transform-origin: center;">
                                                <p style="margin:0;">Call me</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="settings_sms" class="tab-pane fade">
                    <div class="panel panel-default" style="border-top:0;">
                        <div class="panel-body" style="padding-top:0;">
                        </div>
                    </div>
                </div>
                <div id="settings_analytics" class="tab-pane fade">
                    <div class="panel panel-default" style="border-top:0;">
                        <!---------- Analytics settings ------------>
                        <div class="panel-body">
                            <!---------- Extended analytics ------------>
                            <div class="row">
                                <div class="col-xs-12">
                                    <fieldset class="checkbox-switcher">
                                        <span class="checkbox-switcher-title h6"><?php echo $exan_status_title; ?></span>
                                        <div class="form-check-switcher-wrapper switcher-on-off">
                                            <span class="custom-checkbox-input-switcher-before"><?php echo $text_disabled; ?></span>
                                            <div class="form-check form-check-inline form-check-switcher">
                                                <input type="checkbox" name="callback[exan_status]" value="1" id="exan_status" class="custom-checkbox-input-switcher" <?php echo (isset($callback['exan_status']) && $callback['exan_status'] === '1') ? 'checked="checked"' : '' ?> />
                                                <label class="custom-checkbox-input-switcher-label" for="exan_status"><?php echo $entry_status; ?></label>
                                            </div>
                                            <span class="custom-checkbox-input-switcher-after"><?php echo $text_enabled; ?></span>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                            <!---------- Google.com ------------>
                            <hr class="main" />
                            <h3 class="text-center"><?php echo $google_form_title; ?></h3>
                            <div class="row">
                                <div class="col-sm-6 col-xs-12">
                                    <label for="google_category_btn"><?php echo $google_category_btn_title; ?></label>
                                    <input type="text" name="callback[google_category_btn]" value="<?php echo isset($callback['google_category_btn']) ? $callback['google_category_btn'] : ''; ?>" placeholder="<?php echo $google_category_btn_title; ?>" id="google_category_btn" class="form-control mb-15" />
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <label for="google_action_btn"><?php echo $google_action_btn_title; ?></label>
                                    <input type="text" name="callback[google_action_btn]" value="<?php echo isset($callback['google_action_btn']) ? $callback['google_action_btn'] : ''; ?>" placeholder="<?php echo $google_action_btn_title; ?>" id="google_action_btn" class="form-control mb-15" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 col-xs-12">
                                    <label for="google_category_send"><?php echo $google_category_send_title; ?></label>
                                    <input type="text" name="callback[google_category_send]" value="<?php echo isset($callback['google_category_send']) ? $callback['google_category_send'] : ''; ?>" placeholder="<?php echo $google_category_send_title; ?>" id="google_category_send" class="form-control mb-15" />
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <label for="google_action_send"><?php echo $google_action_send_title; ?></label>
                                    <input type="text" name="callback[google_action_send]" value="<?php echo isset($callback['google_action_send']) ? $callback['google_action_send'] : ''; ?>" placeholder="<?php echo $google_action_send_title; ?>" id="google_action_send" class="form-control mb-15" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 col-xs-12">
                                    <label for="google_category_success"><?php echo $google_category_success_title; ?></label>
                                    <input type="text" name="callback[google_category_success]" value="<?php echo isset($callback['google_category_success']) ? $callback['google_category_success'] : ''; ?>" placeholder="<?php echo $google_category_success_title; ?>" id="google_category_success" class="form-control mb-15" />
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <label for="google_action_success"><?php echo $google_action_success_title; ?></label>
                                    <input type="text" name="callback[google_action_success]" value="<?php echo isset($callback['google_action_success']) ? $callback['google_action_success'] : ''; ?>" placeholder="<?php echo $google_action_success_title; ?>" id="google_action_success" class="form-control mb-15" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <fieldset class="checkbox-switcher">
                                        <span class="checkbox-switcher-title h6"><?php echo $google_target_status_title; ?></span>
                                        <div class="form-check-switcher-wrapper switcher-on-off">
                                            <span class="custom-checkbox-input-switcher-before"><?php echo $text_disabled; ?></span>
                                            <div class="form-check form-check-inline form-check-switcher">
                                                <input type="checkbox" name="callback[google_status]" value="1" id="google_status" class="custom-checkbox-input-switcher" <?php echo (isset($callback['google_status']) && $callback['google_status'] === '1') ? 'checked="checked"' : '' ?> />
                                                <label class="custom-checkbox-input-switcher-label" for="google_status"><?php echo $entry_status; ?></label>
                                            </div>
                                            <span class="custom-checkbox-input-switcher-after"><?php echo $text_enabled; ?></span>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                            <!---------- Yandex.ru ------------>
                            <hr class="main" />
                            <h3 class="text-center"><?php echo $ya_form_title; ?></h3>
                            <div class="row">
                                <div class="col-sm-6 col-xs-12">
                                    <label for="ya_counter"><?php echo $ya_counter_title; ?></label>
                                    <input type="text" name="callback[ya_counter]" value="<?php echo isset($callback['ya_counter']) ? $callback['ya_counter'] : ''; ?>" placeholder="<?php echo $ya_counter_title; ?>" id="ya_counter" class="form-control mb-15" />
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <label for="ya_identifier"><?php echo $ya_identifier_title; ?></label>
                                    <input type="text" name="callback[ya_identifier]" value="<?php echo isset($callback['ya_identifier']) ? $callback['ya_identifier'] : ''; ?>" placeholder="<?php echo $ya_identifier_title; ?>" id="ya_identifier" class="form-control mb-15" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 col-xs-12">
                                    <label for="ya_identifier_send"><?php echo $ya_identifier_send_title; ?></label>
                                    <input type="text" name="callback[ya_identifier_send]" value="<?php echo (isset($callback['ya_identifier_send'])) ? $callback['ya_identifier_send'] : ''; ?>" placeholder="<?php echo $ya_identifier_send_title; ?>" id="ya_identifier_send" class="form-control mb-15" />
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <label for="ya_identifier_success"><?php echo $ya_identifier_success_title; ?></label>
                                    <input type="text" name="callback[ya_identifier_success]" value="<?php echo (isset($callback['ya_identifier_success'])) ? $callback['ya_identifier_success'] : ''; ?>" placeholder="<?php echo $ya_identifier_success_title; ?>" id="ya_identifier_success" class="form-control mb-15" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <fieldset class="checkbox-switcher">
                                        <span class="checkbox-switcher-title h6"><?php echo $ya_target_status_title; ?></span>
                                        <div class="form-check-switcher-wrapper switcher-on-off">
                                            <span class="custom-checkbox-input-switcher-before"><?php echo $text_disabled; ?></span>
                                            <div class="form-check form-check-inline form-check-switcher">
                                                <input type="checkbox" name="callback[ya_status]" value="1" id="ya-status" class="custom-checkbox-input-switcher" <?php echo (isset($callback['ya_status']) && $callback['ya_status'] === '1') ? 'checked="checked"' : '' ?> />
                                                <label class="custom-checkbox-input-switcher-label" for="ya-status"><?php echo $entry_status; ?></label>
                                            </div>
                                            <span class="custom-checkbox-input-switcher-after"><?php echo $text_enabled; ?></span>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="text_tab_help" class="tab-pane fade">
                    <div class="col-xs-12" style="border: 1px solid #ddd; border-top: none;">
                        <div class="h4 text-primary mb-0">
                            <strong><?php echo $text_tab_help_title; ?></strong>
                        </div>
                        <div class="text_help" style="margin-top:2em;"><?php echo $text_help; ?></div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<?php echo $footer; ?>
<script type="text/javascript">
    $(document).ready(function() {
        $('.color_input input').ColorPicker({
            onChange: function(hsb, hex, rgb, el) {
                $(el).val("#" + hex);
                $(el).parent().find('.fa').css("color", "#" + hex);
                $('.circle_color').css("background-color", "#" + hex);
                $('.circle_color').css("border-color", "#" + hex);
            },
            onShow: function(colpkr) {
                $(colpkr).show();
                return false;
            },
            onHide: function(colpkr) {
                $(colpkr).hide();
                return false;
            }
        });
    });
</script>