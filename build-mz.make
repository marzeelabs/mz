api = 2
core = 7.x

; Include the definition for how to build Drupal core directly, including patches
includes[] = drupal-org-core.make

; Download the install profile and recursively build all its dependencies
projects[mz][type] = "profile"
projects[mz][download][type] = "git"
projects[mz][download][url] = "https://github.com/marzeelabs/mz.git"
projects[mz][download][branch] = "master"
