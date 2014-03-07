<?php

/**
 * Implements hook_migrate_api().
 */
function mz_migrate_example_migrate_api() {
  $api = array(
    'api' => 2,
    'migrations' => array(
      'MZBrewery' => array('class_name' => 'MZBreweryMigration'),
      'MZTrappist' => array('class_name' => 'MZTrappistMigration'),
    ),
  );
  return $api;
}
