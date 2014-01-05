<?php

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function mz_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
  
  // Set default login, password and all that stuff to make install even faster.
  $admin_mail = 'admin@example.org';
  $form['site_information']['site_mail']['#default_value'] = $admin_mail;
  $form['admin_account']['account']['name']['#default_value'] = 'admin'; 
  $form['admin_account']['account']['mail']['#default_value'] = $admin_mail; 
  $form['update_notifications']['update_status_module']['#default_value'][1] = 0;
  $form['update_notifications']['update_status_module']['#default_value'][2] = 0;
}