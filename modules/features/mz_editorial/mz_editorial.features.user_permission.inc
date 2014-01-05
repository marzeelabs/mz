<?php
/**
 * @file
 * mz_editorial.features.user_permission.inc
 */

/**
 * Implements hook_user_default_permissions().
 */
function mz_editorial_user_default_permissions() {
  $permissions = array();

  // Exported permission: access ckeditor link.
  $permissions['access ckeditor link'] = array(
    'name' => 'access ckeditor link',
    'roles' => array(
      'editor' => 'editor',
    ),
    'module' => 'ckeditor_link',
  );

  // Exported permission: access toolbar.
  $permissions['access toolbar'] = array(
    'name' => 'access toolbar',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'toolbar',
  );

  // Exported permission: access workbench.
  $permissions['access workbench'] = array(
    'name' => 'access workbench',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'workbench',
  );

  // Exported permission: add media from remote sources.
  $permissions['add media from remote sources'] = array(
    'name' => 'add media from remote sources',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'media_internet',
  );

  // Exported permission: administer file types.
  $permissions['administer file types'] = array(
    'name' => 'administer file types',
    'roles' => array(),
    'module' => 'file_entity',
  );

  // Exported permission: administer files.
  $permissions['administer files'] = array(
    'name' => 'administer files',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: administer nodes.
  $permissions['administer nodes'] = array(
    'name' => 'administer nodes',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'node',
  );

  // Exported permission: administer workbench.
  $permissions['administer workbench'] = array(
    'name' => 'administer workbench',
    'roles' => array(
      'administrator' => 'administrator',
    ),
    'module' => 'workbench',
  );

  // Exported permission: administer workbench moderation.
  $permissions['administer workbench moderation'] = array(
    'name' => 'administer workbench moderation',
    'roles' => array(
      'administrator' => 'administrator',
    ),
    'module' => 'workbench_moderation',
  );

  // Exported permission: bypass file access.
  $permissions['bypass file access'] = array(
    'name' => 'bypass file access',
    'roles' => array(),
    'module' => 'file_entity',
  );

  // Exported permission: bypass workbench moderation.
  $permissions['bypass workbench moderation'] = array(
    'name' => 'bypass workbench moderation',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'workbench_moderation',
  );

  // Exported permission: create files.
  $permissions['create files'] = array(
    'name' => 'create files',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: delete revisions.
  $permissions['delete revisions'] = array(
    'name' => 'delete revisions',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'node',
  );

  // Exported permission: moderate content from draft to needs_review.
  $permissions['moderate content from draft to needs_review'] = array(
    'name' => 'moderate content from draft to needs_review',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'workbench_moderation',
  );

  // Exported permission: moderate content from needs_review to draft.
  $permissions['moderate content from needs_review to draft'] = array(
    'name' => 'moderate content from needs_review to draft',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'workbench_moderation',
  );

  // Exported permission: moderate content from needs_review to published.
  $permissions['moderate content from needs_review to published'] = array(
    'name' => 'moderate content from needs_review to published',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'workbench_moderation',
  );

  // Exported permission: revert revisions.
  $permissions['revert revisions'] = array(
    'name' => 'revert revisions',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'node',
  );

  // Exported permission: use text format filtered_html.
  $permissions['use text format filtered_html'] = array(
    'name' => 'use text format filtered_html',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'filter',
  );

  // Exported permission: use text format full_html.
  $permissions['use text format full_html'] = array(
    'name' => 'use text format full_html',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'filter',
  );

  // Exported permission: use workbench_media add form.
  $permissions['use workbench_media add form'] = array(
    'name' => 'use workbench_media add form',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'workbench_media',
  );

  // Exported permission: use workbench_moderation my drafts tab.
  $permissions['use workbench_moderation my drafts tab'] = array(
    'name' => 'use workbench_moderation my drafts tab',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'workbench_moderation',
  );

  // Exported permission: use workbench_moderation needs review tab.
  $permissions['use workbench_moderation needs review tab'] = array(
    'name' => 'use workbench_moderation needs review tab',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'workbench_moderation',
  );

  // Exported permission: view all unpublished content.
  $permissions['view all unpublished content'] = array(
    'name' => 'view all unpublished content',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'workbench_moderation',
  );

  // Exported permission: view files.
  $permissions['view files'] = array(
    'name' => 'view files',
    'roles' => array(
      'anonymous user' => 'anonymous user',
      'authenticated user' => 'authenticated user',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: view moderation history.
  $permissions['view moderation history'] = array(
    'name' => 'view moderation history',
    'roles' => array(
      'authenticated user' => 'authenticated user',
      'editor' => 'editor',
    ),
    'module' => 'workbench_moderation',
  );

  // Exported permission: view moderation messages.
  $permissions['view moderation messages'] = array(
    'name' => 'view moderation messages',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'workbench_moderation',
  );

  // Exported permission: view own files.
  $permissions['view own files'] = array(
    'name' => 'view own files',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: view own private files.
  $permissions['view own private files'] = array(
    'name' => 'view own private files',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'file_entity',
  );

  // Exported permission: view own unpublished content.
  $permissions['view own unpublished content'] = array(
    'name' => 'view own unpublished content',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'node',
  );

  // Exported permission: view revisions.
  $permissions['view revisions'] = array(
    'name' => 'view revisions',
    'roles' => array(
      'administrator' => 'administrator',
      'editor' => 'editor',
    ),
    'module' => 'node',
  );

  return $permissions;
}
