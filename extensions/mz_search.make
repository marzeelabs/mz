core = 7.x
api = 2

; Projects
; --------

projects[search_api][version] = 1.11
projects[search_api][subdir] = "contrib"

projects[search_api_db][version] = 1.2
projects[search_api_db][subdir] = "contrib"

projects[search_api_page][version] = 1.0
projects[search_api_page][subdir] = "contrib"

projects[facetapi][version] = 1.3
projects[facetapi][subdir] = "contrib"
; Apply patch from https://drupal.org/files/1616518-term_remove_link-24.patch ?
; projects[facetapi][patch][] = "http://drupal.org/files/1616518-7-show-active-term.patch"

; If using i18n
; search_api_et


;; Issues using Search API and Profile2
;; Currently there is no way to do multi-index searches on the DB service, only Solr supports this. We'd need multi-index searches to search
;; both profiles (users) and content at the same time.

projects[apachesolr][version] = 1.6
projects[apachesolr][subdir] = "contrib"

projects[apachesolr_multilingual][version] = 1.x-dev
projects[apachesolr_multilingual][subdir] = "contrib"
projects[apachesolr_multilingual][patch][] = "https://drupal.org/files/issues/apachesolr_multilingual-remove_translation_documents-2195363_0.patch"

projects[apachesolr_autocomplete][version] = 1.x-dev
projects[apachesolr_autocomplete][subdir] = "contrib"

projects[apachesolr_workbench_moderation][version] = 1.1
projects[apachesolr_workbench_moderation][subdir] = "contrib"