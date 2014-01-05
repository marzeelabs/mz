<?php
/**
 * @file
 * mz_editorial.features.user_role.inc
 */

/**
 * Implements hook_user_default_roles().
 */
function mz_editorial_user_default_roles() {
  $roles = array();

  // Exported role: administrator.
  $roles['administrator'] = array(
    'name' => 'administrator',
    'weight' => 6,
  );

  // Exported role: editor.
  $roles['editor'] = array(
    'name' => 'editor',
    'weight' => 5,
  );

  return $roles;
}
