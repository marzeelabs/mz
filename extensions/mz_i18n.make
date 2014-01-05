; Use with
; includes[mz_i18n] = "https://bitbucket.org/marzeelabs/mz_make/raw/ebb2b1251c1ea2638edbb22f169c2056aa71a6e1/mz_i18n.make"

core = 7.x
api = 2

; Projects
; --------

; Entity-based translation; the way core and i18n is evolving in d.o
projects[entity_translation][version] = 1.0-beta3
projects[entity_translation][subdir] = "contrib"

projects[title][version] = 1.0-alpha7
projects[title][subdir] = "contrib"

projects[i18n][version] = 1.10
projects[i18n][subdir] = "contrib"

projects[variable][version] = 2.3
projects[variable][subdir] = "contrib"

projects[stringoverrides][version] = 1.8
projects[stringoverrides][subdir] ="contrib"

projects[i18nviews][version] = 3.x-dev
projects[i18nviews][subdir] ="contrib"

; To aid the translation workflow
;projects[l10n_client][version] = 1.1
;projects[l10n_client][subdir] ="contrib"
;projects[l10n_update][version] = 1.0-beta3
;projects[l10n_update][subdir] ="contrib"


; Configuration instructions
; --------------------------

; A generic configuration of i18n using entity translation and paths like /en/node/1 or /es/node/1 can be easily done like this:
; - Use the block "Language switcher (User interface text)" if using Entity Translation
; - Enable another language than English
; - User interface detection method: enable URL, then Browser
; - Content language detection method: enable Interface
; - Edit English language and set "Path prefix language code" to en
