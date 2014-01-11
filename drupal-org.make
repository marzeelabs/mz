; Drupal.org Make file
; @marzeelabs

; Core version
; ------------

core = 7.x
api = 2

; Projects
; --------

; Entities
projects[entity][version] = 1.2
projects[entity][subdir] = "contrib"

projects[field_group][version] = 1.3
projects[field_group][subdir] = "contrib"
; Allow preprocess fields to be within field_groups. Still has issues unfortunately. Read on http://drupal.org/node/1342878
; It doesn't apply cleanly anymore, so we disable it for now. When we notice errors we can revisit
;projects[field_group][patch][] = "http://drupal.org/files/fieldgroup-preprocess-1342878_0.patch"

projects[entitycache][version] = 1.2
projects[entitycache][subdir] = "contrib"

; Field types
; Can be updated to a stable release once 1.1 is released

projects[entityreference][version] = 1.x-dev
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

projects[context][version] = 3.1
projects[context][subdir] = "contrib"

projects[flag][version] = 2.1
projects[flag][subdir] = "contrib"

projects[menu_block][version] = 2.3
projects[menu_block][subdir] = "contrib"

projects[token][version] = 1.5
projects[token][subdir] = "contrib"

; Admin
projects[admin_menu][version] = 3.0-rc4
projects[admin_menu][subdir] = "contrib"

projects[advanced_help][version] = 1.1
projects[advanced_help][subdir] = "contrib"

projects[ctools][version] = 1.3
projects[ctools][subdir] = "contrib"

projects[module_filter][version] = 1.8
projects[module_filter][subdir] = "contrib"

; Development
projects[devel][version] = 1.3
projects[devel][subdir] = "contrib"

; Keep an eye on the following issues
; - (should be fixed, TBR) https://drupal.org/node/1722524 Allow to export taxonomy using machine name instead of vid
; - (should be fixed, TBR) https://drupal.org/files/features_static_caches-1063204-32.patch
; Fixing overrides related to media, see https://drupal.org/node/2071073#comment-7797185
; - (should be fixed, TBR) https://drupal.org/files/features-get-component-status-do-not-test.patch
projects[features][version] = 2.0
projects[features][subdir] = "contrib"

projects[strongarm][version] = 2.0
projects[strongarm][subdir] = "contrib"

projects[masquerade][version] = 1.0-rc5
projects[masquerade][subdir] = "contrib"

projects[diff][version] = 3.2
projects[diff][subdir] = "contrib"

projects[backup_migrate][version] = 2.8
projects[backup_migrate][subdir] = "contrib"

projects[libraries][version] = 2.1
projects[libraries][subdir] = "contrib"
; Allow libraries to be put also in the parent profile. See https://drupal.org/node/1811486
projects[libraries][patch][] = "https://gist.github.com/pvhee/8371637/raw/41c33c6c55be15d929843fcb3877fe72afc12309/gistfile1.txt"
;projects[libraries][patch][] = "https://drupal.org/files/1811486-sub-profiles-2.patch"

projects[jquery_update][version] = 2.x-dev
projects[jquery_update][subdir] = "contrib"

; SEO
projects[pathauto][version] = 1.2
projects[pathauto][subdir] = "contrib"

projects[redirect][version] = 1.0-rc1
projects[redirect][subdir] = "contrib"

projects[globalredirect][version] = 1.5
projects[globalredirect][subdir] = "contrib"

projects[google_analytics][version] = 1.3
projects[google_analytics][subdir] = "contrib"

projects[xmlsitemap][version] = 2.0-rc2
projects[xmlsitemap][subdir] = "contrib"

projects[transliteration][version] = 3.1
projects[transliteration][subdir] = "contrib"

projects[page_title][version] = 2.7
projects[page_title][subdir] = "contrib"

; Media
projects[media][subdir] = "contrib"
projects[media][version] = 2.x-dev
; Features export issues, see https://drupal.org/node/2071073
;projects[media][patch][] = "https://drupal.org/files/media-warnings-creating-default-object-from-emtpy-value-2071073-1.patch"
; Media is moving a lot, until this revision we tested. Needs a review and then can be upgraded
projects[media][download][revision] = b097d48

projects[media_youtube][subdir] = "contrib"
projects[media_youtube][version] = 2.x-dev

; Keep with the dev version until unstable7 is updated
projects[file_entity][subdir] = "contrib"
projects[file_entity][version] = 2.x-dev

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

projects[workbench_files][version] = 1.0
projects[workbench_files][subdir] = "contrib"

projects[ckeditor_link][version] = 2.3
projects[ckeditor_link][subdir] = "contrib"

projects[wysiwyg][version] = 2.1
projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][patch][] = "http://drupal.org/files/507696-65.wysiwyg_per_field.patch"
; see http://drupal.org/node/624018 - seems solved
projects[wysiwyg][patch][] = "http://drupal.org/files/0001-feature.inc-from-624018-211-drush_make-7.x-2.1.patch"
; add support for CKEditor 4, see http://drupal.org/node/1853550#comment-6919236
projects[wysiwyg][patch][] = "http://drupal.org/files/wysiwyg-support_v4_ckeditor-1853550-46.patch"

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
projects[chosen][version] = 2.0-alpha2
projects[chosen][subdir] = "contrib"

; Theming
projects[ds][version] = 2.6
projects[ds][subdir] = "contrib"

projects[fontyourface][version] = 2.8
projects[fontyourface][subdir] = "contrib"


; Libraries
; ---------

libraries[ckeditor][type] = "libraries"
libraries[ckeditor][download][type] = "file"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.0.3/ckeditor_4.0.3_standard.zip"


; Drush
; -----

; Pandarus - a toolbox to make development on Pantheon easier (http://getpantheon.com)
; Using our own repository for the moment, until the d.o repository is fixed
libraries[pandarus][download][type] = "git"
libraries[pandarus][download][url] = "git@bitbucket.org:marzeelabs/pandarus.git"
libraries[pandarus][destination] = drush
libraries[pandarus][directory_name] = pandarus

; Phing Drush is used to use drush in phing build tasks for CI
libraries[phing-drush][download][type] = "git"
libraries[phing-drush][download][url] = "git@bitbucket.org:marzeelabs/phing-drush.git"
libraries[phing-drush][destination] = drush
libraries[phing-drush][directory_name] = phing-drush

