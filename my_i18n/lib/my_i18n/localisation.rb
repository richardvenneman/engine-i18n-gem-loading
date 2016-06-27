require 'i18n'

I18n.load_path += MyI18n.translation_files
I18n.available_locales = MyI18n.available_locales
I18n.backend.load_translations
