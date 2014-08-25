<?php

class MZBreweryMigration extends MZBaseMigration {

  public function __construct($arguments) {
    parent::__construct($arguments);

    $this->description = t('Import breweries.');

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
      drupal_get_path('module', 'mz_migrate_example') . '/migrate/import/breweries.csv',
      array(),
      $this->sourceFileOptions()
    );

    // Destination
    $this->destination = new MigrateDestinationNode('mz_migrate_example_brewery');


    // Field Mappings

    // Title
    $this->addFieldMapping('title', 'title');

    // Body
    $this->addFieldMapping('body', 'body');
    $this->addFieldMapping('body:format')->defaultValue('filtered_html');

    // Address
    $address_arguments = array(
      'thoroughfare' => array('source_field' => 'street'),
      'locality' => array('source_field' => 'city'),
      'postal_code' => array('source_field' => 'postal_code'),
    );
    $this->addFieldMapping('field_brewery_address', 'country')
      ->arguments($address_arguments);

    // Date

    // Link
    $this->addFieldMapping('field_brewery_link', 'website');

    // Author, default to admin
    $this->addFieldMapping('uid')->defaultValue(1);

  }

  public function prepareRow($row) {
  }

}
