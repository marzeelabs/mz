core = 7.x
api = 2

; Projects
; --------

projects[commerce][version] = 1.7
projects[commerce][subdir] = "contrib"

projects[commerce_features][version] = 1.0-rc1
projects[commerce_features][subdir] = "contrib"
projects[commerce_features][patch][] = "http://drupal.org/files/1402762_export_flat_rate_commerce_features-6.patch"

projects[commerce_addressbook][version] = 2.0-rc4
projects[commerce_addressbook][subdir] = "contrib"

projects[commerce_shipping][version] = 2.x-dev
projects[commerce_shipping][subdir] = "contrib"

projects[commerce_flat_rate][version] = 1.0-beta2
projects[commerce_flat_rate][subdir] = "contrib"

;projects[commerce_fancy_attributes][version] = 1.x-dev
;projects[commerce_fancy_attributes][subdir] = "contrib"
;projects[commerce_autosku][version] = 1.0
;projects[commerce_autosku][subdir] = "contrib"
;projects[commerce_autosku][patch][] = "http://drupal.org/files/commerce_autosku-1616370-4_fixed_features_support.patch"
;projects[commerce_migrate][version] = 1.x-dev
;projects[commerce_migrate][subdir] = "contrib"
;projects[commerce_discount][type] = module
;projects[commerce_discount][subdir] = "contrib"
;projects[commerce_discount][download][type] = git
;projects[commerce_discount][download][revision] = 6e933cb8c6c58b2c833809239ba8468dd66c9f9e
;projects[commerce_discount][download][branch] = 7.x-1.x

projects[commerce_coupon][version] = 1.0-beta7
projects[commerce_coupon][subdir] = "contrib"
projects[commerce_coupon_pct][version] = 1.0-beta7
projects[commerce_coupon_pct][subdir] = "contrib"

projects[commerce_backoffice][version] = 1.2
projects[commerce_backoffice][subdir] = "contrib"

projects[eva][version] = 1.2
projects[eva][subdir] = "contrib"

; Waiting for https://drupal.org/node/1840368#comment-7434954 to be committed, in 1.1 release
projects[views_megarow][version] = 1.x-dev
projects[views_megarow][subdir] = "contrib"

; Wait for 1.3 so this bug fix is included: http://drupal.org/node/1587282#comment-7106060
projects[commerce_checkout_progress][version] = 1.x-dev
projects[commerce_checkout_progress][subdir] = "contrib"

projects[commerce_reports][version] = 3.x-dev
projects[commerce_reports][subdir] = "contrib"



