# MZ Site
**Drupal 7 site controller feature**

## About

Contains general settings we like. Next to this feature always create a site-specific feature, e.g. mysite_site, which will contain the site-specific settings and the update procedures for a database-free development flow.

## Usage

### Code snippets

Write your database updates using [hook\_update\_N](http://api.drupal.org/api/drupal/modules%21system%21system.api.php/function/hook_update_N/7)
```php
<?php
/**
 * Enable module tagadelic.
 */
function mz_site_update_7001() {
  module_enable(array('tagadelic'));
}
?>
```

```php
<?php
/**
 * Disable module tagadelic.
 */
function mz_site_update_N() {
  module_disable(array('tagadelic'));
}
?>
```

```php
<?php
/**
 * Delete field.
 */
function mz_site_update_N() {
  field_delete_field('field_product_alias');
}
?>
```

```php
<?php
/**
 * Remove field_group
 */
function oc_site_update_7012() {
  ctools_include('export');
  $group = field_group_load_field_group('group_rprofile_project', 'profile2', 'researcher_profile', 'form');
  field_group_group_export_delete($group, FALSE);
}
```

```php
<?php
/**
 * Disable default view.
 */
function mz_site_update_N() {
  $views_to_disable = array('commerce_user_orders');
  $status = variable_get('views_defaults', array());
  foreach ($views_to_disable as $name) $status[$name] = TRUE;
  variable_set('views_defaults', $status);
}
?>
```

```php
<?php
/**
 * Disable a default rule
 */
function mz_site_update_N() {
  $rules_config = rules_config_load('commerce_cart_add_to_cart_message');
  $rules_config->active = FALSE;
  $rules_config->save();
}
?>
```

Then, add this to your .info file
```
features[rules_config][] = rules_add_to_cart_message
```

```php
<?php
/**
 * Disable a rule.
 */
function mz_site_update_N() {
  $rules_to_disable = array('rules_redirect_after_login');
  db_update('rules_config')
    ->fields(array('active' => 0))
    ->condition('name', $rules_to_disable, 'IN')
    ->execute();
  rules_clear_cache(TRUE);
}
?>
```

```php
<?php
/**
 * Revert a feature
 */
function mz_site_update_N() {
  features_revert(array('feature_blog'));
}
?>
```

### Deployment scripts

Enable all SEO modules
```php
<?php
/**
 * Enable SEO modules
 */
function mz_site_update_N() {
  module_enable(array('redirect', 'globalredirect'));
  module_enable(array('xmlsitemap', 'xmlsitemap_engines', 'xmlsitemap_node'));
}
?>
```

Disable developer modules
```php
<?php
/**
 * Disable developer and UI modules
 */
function mz_site_update_N() {
  module_disable(array('views_ui', 'rules_admin', 'context_ui', 'devel'));
}
?>
```


## Credits

* http://marzeelabs.org
* [@marzeelabs](http://twitter.com/marzeelabs)
