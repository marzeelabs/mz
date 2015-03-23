; Drupal.org Make file
; @marzeelabs

; Core version
; ------------

core = 7.x
api = 2

; Projects
; --------

; Entities
projects[entity][version] = 1.6
projects[entity][subdir] = "contrib"

projects[field_group][version] = 1.4
projects[field_group][subdir] = "contrib"

projects[entitycache][version] = 1.2
projects[entitycache][subdir] = "contrib"

projects[entityreference][version] = 1.1
projects[entityreference][subdir] = "contrib"

projects[date][version] = 2.8
projects[date][subdir] = "contrib"

projects[email][version] = 1.3
projects[email][subdir] = "contrib"

projects[link][version] = 1.3
projects[link][subdir] = "contrib"
; Provide the original_url when loading the field.
; @see https://www.drupal.org/node/1475790#comment-7743415
projects[link][patch][] = "http://www.drupal.org/files/7.x-1.x-_link_sanitize-bandaid-1475790-16.diff"

projects[addressfield][version] = 1.0
projects[addressfield][subdir] = "contrib"

; Site building modules
projects[views][version] = 3.10
projects[views][subdir] = "contrib"

projects[views_bulk_operations][version] = 3.2
projects[views_bulk_operations][subdir] = "contrib"

projects[rules][version] = 2.6
projects[rules][subdir] = "contrib"

projects[context][version] = 3.6
projects[context][subdir] = "contrib"

projects[flag][version] = 3.5
projects[flag][subdir] = "contrib"

projects[menu_block][version] = 2.4
projects[menu_block][subdir] = "contrib"

projects[token][version] = 1.5
projects[token][subdir] = "contrib"

; We need this module to work around a D7 core limitation in
; associating e.g. unpublished nodes to taxonomy terms. Will fix
; also associations between taxonomy terms and entities
projects[taxonomy_entity_index][version] = 1.0-beta7
projects[taxonomy_entity_index][subdir] = "contrib"

; Admin
projects[admin_menu][version] = 3.0-rc5
projects[admin_menu][subdir] = "contrib"

projects[advanced_help][version] = 1.1
projects[advanced_help][subdir] = "contrib"

projects[ctools][version] = 1.7
projects[ctools][subdir] = "contrib"

projects[module_filter][version] = 2.0
projects[module_filter][subdir] = "contrib"

; Development
projects[devel][version] = 1.5
projects[devel][subdir] = "contrib"

projects[features][version] = 2.4
projects[features][subdir] = "contrib"

; Feature Extra: additional exporting capabilities
projects[features_extra][version] = 1.0-beta1
projects[features_extra][subdir] = "contrib"

projects[strongarm][version] = 2.0
projects[strongarm][subdir] = "contrib"

projects[masquerade][version] = 1.0-rc7
projects[masquerade][subdir] = "contrib"

projects[diff][version] = 3.2
projects[diff][subdir] = "contrib"

; Use when deploying on a server which doesn't have automatic backups configured.
projects[backup_migrate][version] = 3.0
projects[backup_migrate][subdir] = "contrib"

projects[libraries][version] = 2.2
projects[libraries][subdir] = "contrib"
; Allow libraries to be put also in the parent profile. See http://drupal.org/node/1811486
; projects[libraries][patch][] = "http://drupal.org/files/1811486-sub-profiles-2.patch"
projects[libraries][patch][] = "http://gist.github.com/pvhee/7307987/raw/c2cbf531d6766895d4a25c6292974596f26b7d3f/gistfile1.txt"

projects[jquery_update][version] = 2.4
projects[jquery_update][subdir] = "contrib"

; To fix role exports for deployments. See https://drupal.org/node/1702626
projects[role_export][version] = 1.0
projects[role_export][subdir] = "contrib"

; SEO
projects[pathauto][version] = 1.2
projects[pathauto][subdir] = "contrib"

projects[redirect][version] = 1.0-rc1
projects[redirect][subdir] = "contrib"

projects[globalredirect][version] = 1.5
projects[globalredirect][subdir] = "contrib"

projects[google_analytics][version] = 2.0
projects[google_analytics][subdir] = "contrib"

projects[xmlsitemap][version] = 2.0
projects[xmlsitemap][subdir] = "contrib"

projects[transliteration][version] = 3.2
projects[transliteration][subdir] = "contrib"

projects[page_title][version] = 2.7
projects[page_title][subdir] = "contrib"

projects[metatag][version] = 1.0-rc2
projects[metatag][subdir] = "contrib"

; Media
projects[media][subdir] = "contrib"
projects[media][version] = 2.x-dev
; Features export issues, see https://drupal.org/node/2071073
;projects[media][patch][] = "https://drupal.org/files/media-warnings-creating-default-object-from-emtpy-value-2071073-1.patch"
; Media is moving a lot, until this revision we tested. Needs a serious review and then can be upgraded
projects[media][download][revision] = b097d48

projects[media_youtube][subdir] = "contrib"
projects[media_youtube][version] = 2.x-dev
projects[media_youtube][revision] = 187283f

projects[file_entity][subdir] = "contrib"
; Use dev release until 2.0-alpha3 is bumped to a new version
projects[file_entity][version] = 2.x-dev
projects[file_entity][revision] = 1e037ad

; Editor experience
projects[workbench][version] = 1.2
projects[workbench][subdir] = "contrib"

projects[workbench_media][version] = 1.1
projects[workbench_media][subdir] = "contrib"

; Note: we used to work with workbench_moderation but gave up due to serious
; limitations with entity_translation, our preferred way of dealing with i18n

projects[ckeditor_link][version] = 2.3
projects[ckeditor_link][subdir] = "contrib"

projects[wysiwyg][version] = 2.2
projects[wysiwyg][subdir] = "contrib"
; Allow individual width/height per field
; @see https://drupal.org/node/507696
projects[wysiwyg][patch][] = "https://drupal.org/files/wysiwyg_field_size_507696_96_0.patch"
; Add support for CKEditor 4
; @see http://drupal.org/node/1853550#comment-6919236
projects[wysiwyg][patch][] = "http://drupal.org/files/wysiwyg-support_v4_ckeditor-1853550-46.patch"

; Using dev version to support responsive images; @todo which issue is that?
projects[caption_filter][version] = 1.x-dev
projects[caption_filter][subdir] = "contrib"
projects[caption_filter][revision] = d799f69

projects[menu_admin_per_menu][version] = 1.0
projects[menu_admin_per_menu][subdir] = "contrib"

; Anti-spam
projects[invisimail][version] = 1.1
projects[invisimail][subdir] = "contrib"

;projects[spamicide][version] = 1.1
;projects[spamicide][subdir] = "contrib"

; UX
projects[chosen][version] = 2.0-alpha4
projects[chosen][subdir] = "contrib"

; Theming
projects[ds][version] = 2.6
projects[ds][subdir] = "contrib"
; DS in combination with Solr
; @see https://drupal.org/node/2184139
projects[ds][patch][] = "https://drupal.org/files/issues/ds_search-2184139-missing-entity-causes-exception-2.patch"

projects[fontyourface][version] = 2.8
projects[fontyourface][subdir] = "contrib"

; Migrate
projects[migrate][version] = 2.6-rc1
projects[migrate][subdir] = "contrib"

projects[migrate_extras][version] = 2.5
projects[migrate_extras][subdir] = "contrib"
; Add support for bean migrate
; @see https://drupal.org/node/1977058
projects[migrate_extras][patch][] = "https://drupal.org/files/migrate_extras_entity_api_entity_keys_name.patch"
; Adds support for flags 3.X migration
projects[migrate_extras][patch][] = "http://drupal.org/files/migrate_extras-flag_3_support-2029613-3.patch"

; Libraries
; ---------

libraries[ckeditor][download][type] = "file"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.4.4/ckeditor_4.4.4_full.zip"

; Drush
; -----

; Phing Drush support. Use dev until 1.1 released
projects[phingdrushtask][download][type] = "git"
projects[phingdrushtask][download][url] = "http://git.drupal.org/project/phingdrushtask.git"
projects[phingdrushtask][download][branch] = "7.x-1.x"
projects[phingdrushtask][download][revision] = 10b9919
projects[phingdrushtask][subdir] = drush
