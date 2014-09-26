api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = 7.31

; Make profiles inherit from each other
; Allows to use MZ as a base profile including it's modules
; @see https://drupal.org/node/2067229
projects[drupal][patch][] = "http://drupal.org/files/2067229-2-inheritable-profiles.patch"
