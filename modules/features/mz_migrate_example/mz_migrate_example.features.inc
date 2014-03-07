<?php
/**
 * @file
 * mz_migrate_example.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function mz_migrate_example_ctools_plugin_api($module = NULL, $api = NULL) {
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_node_info().
 */
function mz_migrate_example_node_info() {
  $items = array(
    'mz_migrate_example_brewery' => array(
      'name' => t('Brewery'),
      'base' => 'node_content',
      'description' => t('Breweries brew beers.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
    'mz_migrate_example_trappist' => array(
      'name' => t('Trappist'),
      'base' => 'node_content',
      'description' => t('Trappist beer is some of the world\'s finest beer produced by Trappist breweries.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
  );
  return $items;
}
