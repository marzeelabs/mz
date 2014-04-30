; Drupal.org Make file
; @marzeelabs

; Core version
; ------------

core = 7.x
api = 2

; Projects
; --------

; Entities
projects[entity][version] = 1.3
projects[entity][subdir] = "contrib"

projects[field_group][version] = 1.3
projects[field_group][subdir] = "contrib"
; Allow preprocess fields to be within field_groups. Still has issues unfortunately. Read on http://drupal.org/node/1342878
; It doesn't apply cleanly anymore, so we disable it for now. When we notice errors we can revisit
;projects[field_group][patch][] = "http://drupal.org/files/fieldgroup-preprocess-1342878_0.patch"

projects[entitycache][version] = 1.2
projects[entitycache][subdir] = "contrib"

projects[entityreference][version] = 1.1
projects[entityreference][subdir] = "contrib"

projects[date][version] = 2.7
projects[date][subdir] = "contrib"

projects[email][version] = 1.2
projects[email][subdir] = "contrib"

projects[link][version] = 1.2
projects[link][subdir] = "contrib"

projects[addressfield][version] = 1.0-beta5
projects[addressfield][subdir] = "contrib"
; See http://drupal.org/node/968112#comment-6581524
projects[addressfield][patch][] = "https://drupal.org/files/issues/addressfield-nocountry_option-968112-132_1.0-beta4.patch"

; Site building modules
projects[views][version] = 3.7
projects[views][subdir] = "contrib"

projects[views_bulk_operations][version] = 3.2
projects[views_bulk_operations][subdir] = "contrib"

projects[rules][version] = 2.6
projects[rules][subdir] = "contrib"

projects[context][version] = 3.2
projects[context][subdir] = "contrib"

projects[flag][version] = 3.3
projects[flag][subdir] = "contrib"

projects[menu_block][version] = 2.3
projects[menu_block][subdir] = "contrib"

projects[token][version] = 1.5
projects[token][subdir] = "contrib"

; We need this module to work around a D7 core limitation in
; associating e.g. unpublished nodes to taxonomy terms. Will fix
; also associations between taxonomy terms and entities
projects[taxonomy_entity_index][version] = 1.0-beta7
projects[taxonomy_entity_index][subdir] = "contrib"

; Admin
projects[admin_menu][version] = 3.0-rc4
projects[admin_menu][subdir] = "contrib"
; fixes JS error: http://drupal.org/node/1892074
projects[admin_menu][patch][] = "http://drupal.org/files/issues/admin_menu-remove-ie6-support-1892074-5.patch"

projects[advanced_help][version] = 1.1
projects[advanced_help][subdir] = "contrib"

projects[ctools][version] = 1.4
projects[ctools][subdir] = "contrib"

projects[module_filter][version] = 2.0-alpha2
projects[module_filter][subdir] = "contrib"

; Development
projects[devel][version] = 1.4
projects[devel][subdir] = "contrib"

projects[features][version] = 2.0
projects[features][subdir] = "contrib"

projects[strongarm][version] = 2.0
projects[strongarm][subdir] = "contrib"

projects[masquerade][version] = 1.0-rc7
projects[masquerade][subdir] = "contrib"

projects[diff][version] = 3.2
projects[diff][subdir] = "contrib"

; Use when deploying on a server which doesn't have automatic backups configured.
projects[backup_migrate][version] = 2.8
projects[backup_migrate][subdir] = "contrib"

projects[libraries][version] = 2.1
projects[libraries][subdir] = "contrib"
; Allow libraries to be put also in the parent profile. See https://drupal.org/node/1811486
projects[libraries][patch][] = "https://drupal.org/files/1811486-sub-profiles-2.patch"

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

projects[google_analytics][version] = 1.4
projects[google_analytics][subdir] = "contrib"

projects[xmlsitemap][version] = 2.0-rc2
projects[xmlsitemap][subdir] = "contrib"

projects[transliteration][version] = 3.1
projects[transliteration][subdir] = "contrib"

projects[page_title][version] = 2.7
projects[page_title][subdir] = "contrib"

projects[metatag][version] = 1.0-beta9
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

projects[file_entity][subdir] = "contrib"
projects[file_entity][version] = 2.0-alpha3

; Editor experience
projects[workbench][version] = 1.2
projects[workbench][subdir] = "contrib"

projects[workbench_media][version] = 1.1
projects[workbench_media][subdir] = "contrib"

projects[workbench_moderation][version] = 1.3
projects[workbench_moderation][subdir] = "contrib"
; (TBR - fixed) Adding support for Migrate, see http://drupal.org/node/1445824#comment-6885874
;projects[workbench_moderation][patch][] = "http://drupal.org/files/workbench-moderation-migrate-integration-1445824-5-do-not-test.patch"
; https://drupal.org/node/1445824#comment-7753679
projects[workbench_moderation][patch][] = "https://drupal.org/files/workbench_moderation-better_migration_support-1445824-11.patch"
; Support for respecting default node publish status, i.e. don't always pass first via Draft. https://drupal.org/node/1408858#comment-6119398. Has issues with users that shouldn't be able to set status to Published
projects[workbench_moderation][patch][] = "https://drupal.org/files/default-moderation-state-1408858-12.patch"

projects[ckeditor_link][version] = 2.3
projects[ckeditor_link][subdir] = "contrib"

projects[wysiwyg][version] = 2.2
projects[wysiwyg][subdir] = "contrib"
; Allow individual width/height per field - https://drupal.org/node/507696
projects[wysiwyg][patch][] = "https://drupal.org/files/wysiwyg_field_size_507696_96_0.patch"
; Add support for CKEditor 4, see http://drupal.org/node/1853550#comment-6919236
projects[wysiwyg][patch][] = "http://drupal.org/files/wysiwyg-support_v4_ckeditor-1853550-46.patch"
; Add support for profile inheritance
projects[wysiwyg][patch][] = "https://gist.github.com/zensations/5575509/raw/1a413c6d6f6b7be17ca0fe6bcc17d43717f2466e/wysiwyg-profile-inheritance.patch"

; Using dev version to support responsive images; @todo which issue is that?
projects[caption_filter][version] = 1.x-dev
projects[caption_filter][subdir] = "contrib"

projects[menu_admin_per_menu][version] = 1.0
projects[menu_admin_per_menu][subdir] = "contrib"

; Anti-spam
projects[invisimail][version] = 1.1
projects[invisimail][subdir] = "contrib"

projects[spamicide][version] = 1.1
projects[spamicide][subdir] = "contrib"

; UX
projects[chosen][version] = 2.0-alpha4
projects[chosen][subdir] = "contrib"

; Theming
projects[ds][version] = 2.6
projects[ds][subdir] = "contrib"
; DS in combination with Solr, see https://drupal.org/node/2184139
projects[ds][patch][] = "https://drupal.org/files/issues/ds_search-2184139-missing-entity-causes-exception-2.patch"

projects[fontyourface][version] = 2.8
projects[fontyourface][subdir] = "contrib"

; Migrate
projects[migrate][version] = 2.5
projects[migrate][subdir] = "contrib"

projects[migrate_extras][version] = 2.5
projects[migrate_extras][subdir] = "contrib"
; Add support for bean migrate; see https://drupal.org/node/1977058
projects[migrate_extras][patch][] = "https://drupal.org/files/migrate_extras_entity_api_entity_keys_name.patch"


; Libraries
; ---------

libraries[ckeditor][download][type] = "file"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.3/ckeditor_4.3_full.tar.gz"


; Drush
; -----

; Pandarus - a toolbox to make development on Pantheon easier (http://getpantheon.com)
; Using our own repository for the moment, until the d.o repository is fixed
libraries[pandarus][download][type] = "git"
libraries[pandarus][download][url] = "https://bitbucket.org/marzeelabs/pandarus.git"
libraries[pandarus][destination] = drush
libraries[pandarus][directory_name] = pandarus

; Phing Drush is used to use drush in phing build tasks for CI
libraries[phing-drush][download][type] = "git"
libraries[phing-drush][download][url] = "https://bitbucket.org/marzeelabs/phing-drush.git"
libraries[phing-drush][destination] = drush
libraries[phing-drush][directory_name] = phing-drush

