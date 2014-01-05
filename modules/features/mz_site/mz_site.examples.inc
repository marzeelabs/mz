<?php

/**
 * Implements hook_theme_registry_alter().
 *
 * Allow features to declare their own template files.
 */
function mz_site_theme_registry_alter(&$theme_registry) {
  // Define a list of features that can declare template files
  $features = array('mz_site');

  // Add found tpl files to the registry
  $hooks = views_theme(0,0,0,0);
  foreach ($features as $feature) {
    $path = drupal_get_path('module', $feature);
    foreach (file_scan_directory($path . '/templates', '/.*\.tpl\.php/') as $file) {
      $parts = explode('--', $file->name);
      $parts = (count($parts) == 1) ? explode('.', $parts[0]) : $parts;
      $hook = str_replace('-', '_', $parts[0]);

      list($custom_hook, ) = explode('.', $file->name);
      $custom_hook = str_replace('-', '_', $custom_hook);
      if (isset($hooks[$hook])) {
        $theme_registry[$custom_hook] = $theme_registry[$hook];
        $theme_registry[$custom_hook]['function'] = NULL;
        $theme_registry[$custom_hook]['template'] = drupal_clean_css_identifier($custom_hook);
        $theme_registry[$custom_hook]['path'] = $path . '/templates';
        if ($hook == 'views_view_field') {
          $theme_registry[$custom_hook]['file'] = NULL;
        }
      }
    }
  }
}
