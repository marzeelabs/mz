<?php

class MZTrappistMigration extends MZBaseMigration {

  public function __construct($arguments) {
    parent::__construct($arguments);

    $this->description = t('Import trappists.');

    // Create a map object for tracking the relationships between source rows
    $this->map = new MigrateSQLMap($this->machineName,
      array(
        'id' => array(
          'type' => 'int',
          'not null' => TRUE,
        ),
      ),
      MigrateDestinationNode::getKeySchema()
    );

    // Create a MigrateSource object.
    $this->source = new MigrateSourceCSV(
      drupal_get_path('module', 'mz_migrate_example') . '/migrate/import/trappists.csv',
      array(),
      $this->sourceFileOptions()
    );

    // Destination
    $this->destination = new MigrateDestinationNode('mz_migrate_example_trappist');

    // Field Mappings

    // Title
    $this->addFieldMapping('title', 'title');

    // Link with breweries, based on the ID
    $this->addFieldMapping('field_trappist_brewery', 'brewery')
      ->sourceMigration('MZBrewery');

    // Image
    $this->addFieldMapping('field_trappist_image', 'image');
    $this->addFieldMapping('field_trappist_image:file_replace')
      ->defaultValue(FILE_EXISTS_REPLACE);
    $this->addFieldMapping('field_trappist_image:source_dir')
      ->defaultValue(drupal_get_path('module', 'mz_migrate_example') . '/import/files');

    // Taxonomy Term. Allow multiple.
    $this->addFieldMapping('field_trappist_type', 'type')
      ->separator('|');
    $this->addFieldMapping('field_trappist_type:create_term')
      ->defaultValue(TRUE);

    // Author, default to admin
    $this->addFieldMapping('uid')->defaultValue(1);
  }

  public function prepareRow($row) {
  }

}
