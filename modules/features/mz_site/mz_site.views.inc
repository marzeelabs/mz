<?php

/**
 * Implements hook_views_data_().
 */
function mz_site_views_data() {
  $data = array();

  $data['views']['mz_site_base_url'] = array(
    'title' => t('Base URL'),
    'help' => t("Provide a link to the site's base URL."),
    'field' => array(
      'handler' => 'mz_site_handler_field_base_url',
    ),
  );

  return $data;
}
