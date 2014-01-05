# MZ Make
**Drupal makefiles and profile from Marzee Labs to kick-start Drupal development**

## Usage

### Drush make and profile install

```sh
drush make mz_make/mz.make MYSITE --prepare-install
```
Builds a Marzee Labs site ready to be installed

```php
# put all errors (for debugging environment)
ini_set('error_reporting, E_ALL);
error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);
```
Add error support to your local install


### Drush make on Pantheon

`http://getpantheon.com`
Install your site with a vanilla Drupal 7.

```sh
git clone git@code.getpantheon.com:ABCD MYSITE
```
Clone the Pantheon repository

```sh
mz_make_pantheon oc
```
Run the installation scripts using the "oc" profile. Make sure these are also installed in the correct location . *Note: run the command twice to commit to git as well (or solve the bug causing this).*

#### Longer version

```sh
mz_profile_copy mz
```
Copy the MZ profile into the profiles folder. Use of the [mz_drush](github.com/marzeelabs/mz_drush) bash commands.

```sh
cd MYSITE/
drush make --no-core profiles/mz_make/mz.make .
```
Makes a Marzee Labs site without building core

```sh
git add -A .
git commit -m "Built site from MZ"
git push origin master
```

```
http://dev.MYSITE.getpantheon.com/install.php
```
Install your site on Pantheon

If things go wrong, and you need to reinstall the site, use this script to quickly erase the database + files, run from the site directory.

```sh
mz_erase_site my-site
```

### Building make files into existing sites

You can build out e.g. the search or i18n makefiles into an existing Drupal installation like this

```sh
drush make -v --no-core mz_search.make
```

### Installation with a custom profile

The recommened way to start a new project is to use the MZ make as a base makefile/profile, and add from there custom modules. You'd also need to keep it up-to-date as you go through the project, so later you can quickly spin off a new project with the module stack used in this project.

<!-- ; Marzee Labs base makefile to spin off new projects
; Instructions:
;   Create a new project-specific makefile and profile and place it in your /profiles directory, e.g.
;      profiles/
;        mysite/
;          mysite.make -> include the mz makefile and put any other custom modules
;            includes[mz] = "https://raw.github.com/marzeelabs/mz_make/master/mz.make?login=marzeelabs&token=9427c4724aaf8c0c27367d0b4a6c8094"
;          mysite.profile
;          mysite.install -> create your mysite_install() hook and link back to mz_install()
;          mysite.info -> copy here modules to install from mz.info and other *.info files
; Then run drush make and install! -->


## Credits

* http://marzeelabs.org
* @marzeelabs
