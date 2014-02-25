# MZ Make
**Drupal makefiles and profile from Marzee Labs to kick-start Drupal development**

## Usage

### Drush make and profile install

Build a Marzee Labs ready to be installed.

	drush make build-mz.make

### Using Phing to automate build tasks

[Phing](http://www.phing.info) can be used to automate build tasks. Use [MZ Box](), our Phing boilerplate to kick-start your project.

### Topical makefiles

Makefiles in topics like i18n, geo, search and commerce are also provided.

You can build out e.g. the i18n makefiles into an existing Drupal installation like this

	drush make -v --no-core mz_search.make

### Extending the profile

Currently, Drupal 7 core does not allow to inherit a profile, but [this patch](https://drupal.org/node/2067229) makes this possible and thus building profiles that depend on each other much easier.

When you build from this profile, Drupal 7 core is automatically patched, and you can create a new profile and add the following line to `yourprofile.info`

	base = mz

Modules and libraries installed in the MZ profile will then be automatically installed in your profile.

## Credits

Developed by [Marzee Labs](http://marzeelabs.org), [@marzeelabs](http://twitter.com/marzeelabs)