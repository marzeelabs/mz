; Drupal.org Make file
; @marzeelabs

; Core version
; ------------

core = 7.x
api = 2

projects[drupal][version] = 7.23

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
; See http://drupal.org/node/991834#comment-6220660
; projects[addressfield][patch][] = "http://drupal.org/files/addressfield-additional_views_fieldformatters-991834-41.patch"
; See http://drupal.org/node/968112#comment-6581524
projects[addressfield][patch][] = "http://drupal.org/files/addressfield-nocountry_option-968112-98.patch"

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

; Theming

projects[ds][version] = 2.6
projects[ds][subdir] = "contrib"

projects[jquery_update][version] = 2.x-dev
projects[jquery_update][subdir] = "contrib"


