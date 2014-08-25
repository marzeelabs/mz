<?php

/**
 * Implements hook_migrate_api().
 */
function mz_migrate_example_migrate_api() {
  $api = array(
    'api' => 2,
    'groups' => array(
      'mz_example' => array(
        'title' => t('MZ Example Migrations'),
      ),
    ),
    'migrations' => array(
      'MZBrewery' => array(
        'class_name' => 'MZBreweryMigration',
        'group_name' => 'mz_example',
      ),
      'MZTrappist' => array(
        'class_name' => 'MZTrappistMigration',
        'group_name' => 'mz_example',
        'dependencies' => array(
          'MZBrewery',
        ),
      ),
    ),
  );
  return $api;
}
