; This file describes the core project requirements for AID 7.x. Several
; patches against Drupal core and their associated issue numbers have been
; included here for reference.
;
; Use this file to build a full distro including Drupal core (with patches) and
; the AID install profile using the following command:
;
;     $ drush make --working-copy distro.make [directory]

core = 7.x
api = 2

projects[drupal][type] = core
projects[drupal][version] = 7.8

; Make system directories configurable to allow tests in profiles/[name]/modules to be run.
; http://drupal.org/node/911354
projects[drupal][patch][] = http://drupal.org/files/issues/911354.43.patch

; Missing drupal_alter() for text formats and filters
; http://drupal.org/node/903730
projects[drupal][patch][] = http://drupal.org/files/issues/drupal.filter-alter.82.patch

; Use vocabulary machine name for permissions
; http://drupal.org/node/995156
projects[drupal][patch][] = http://drupal.org/files/issues/995156-5_portable_taxonomy_permissions.patch

projects[aid][type] = profile
projects[aid][download][type] = git
projects[aid][download][url] = git://github.com/melbeck/aid.git
projects[aid][download][branch] = dev
