require 'i18n'

module MyI18n
  module Translations
    def self.store_dynamic_translations
      MyI18n.translation_files.each do |file|
        data = YAML.load_file(file).deep_symbolize_keys
        locale = data.keys.first
        translation = {
          my_i18n: {
            child_label: "Prefix: #{data[locale][:my_i18n][:base_label]}"
          }
        }

        I18n.backend.store_translations(locale, translation)
      end
    end
  end
end
