; Marzee Labs Makefile
; @marzeelabs

; Marzee Labs base makefile to spin off new projects
; Instructions:
;   Create a new project-specific makefile and profile and place it in your /profiles directory, e.g.
;      profiles/
;        mysite/
;          mysite.make -> include the mz makefile and put any other custom modules
;            includes[mz] = "includes[mz] = "https://raw.github.com/marzeelabs/mz_make/master/profiles/mz/mz.make?login=marzeelabs&token=c7e23099f7de22c2b83a7ad67ca7b683""
;          mysite.profile
;          mysite.install -> create your mysite_install() hook and link back to mz_install()
;          mysite.info -> copy here modules to install from mz.info and other *.info files
; Then run drush make and install!

;includes[drupal-org] = "https://raw.github.com/marzeelabs/mz_make/master/drupal-org.make?login=marzeelabs&token=27092cea677a636f0b0ef0d416a5c68f"

; Include general drupal.org modules for each installation
includes[] = drupal-org.make

core = 7.x
api = 2

; Projects
; --------

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
;libraries[pandarus][download][type] = "git"
;libraries[pandarus][download][url] = "http://git.drupal.org/sandbox/wodenx/1512788.git"
;libraries[pandarus][download][revision] = "72dc462"
;libraries[pandarus][destination] = drush
;libraries[pandarus][directory_name] = pandarus

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

; Themes
; ------

; If you want to use Rubik+Tao as the admin theme
; projects[tao][version] = 3.x-dev
; projects[rubik][version] = 4.x-dev
; Provide secondary tabs support, e.g. used for workbench. See http://drupal.org/node/1389660
; projects[rubik][patch][] = "http://drupal.org/files/1389660-rubik-secondary-tab-fix-2_0.patch"
; More space for secondary tabs. See http://drupal.org/node/1839694
; projects[rubik][patch][] = "http://drupal.org/files/1839694-1-rubik-secondary-tabs-more-min-width.patch"

; Features
; --------

projects[mz_site][type] = "module"
projects[mz_site][download][type] = "git"
projects[mz_site][download][branch] = "master"
projects[mz_site][download][url] = "git@bitbucket.org:marzeelabs/mz_site.git"
projects[mz_site][subdir] = "features"

projects[mz_editorial][type] = "module"
projects[mz_editorial][download][type] = "git"
projects[mz_editorial][download][branch] = "master"
projects[mz_editorial][download][url] = "git@bitbucket.org:marzeelabs/mz_editorial.git"
projects[mz_editorial][subdir] = "features"
