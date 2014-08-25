<?php

/**
 * Common features for all the Example migrations. It's always good to have a common
 * base class to structure repeatable elements.
 */
abstract class MZBaseMigration extends Migration {

  protected function sourceFileOptions() {
    return array(
      'header_rows' => 1,
      'delimiter' => ",",
      'enclosure' => '"',
    );
  }

}
