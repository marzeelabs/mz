api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = 7.25

; Make profiles inherit from each other, see https://drupal.org/node/2067229
; Allows to use this profile as a base profile including its modules
;projects[drupal][patch][] = "http://drupal.org/files/2067229-2-inheritable-profiles.patch"
projects[drupal][patch][] = "https://drupal.org/files/1356276-D7-inheritable-profiles-multi_6.patch"
