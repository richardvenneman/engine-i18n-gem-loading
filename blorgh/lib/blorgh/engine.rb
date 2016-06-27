module Blorgh
  class Engine < ::Rails::Engine
    isolate_namespace Blorgh

    config.to_prepare do
      MyI18n::Translations.store_dynamic_translations
    end

    # initializer 'my_i18n' do
    #   MyI18n::Translations.store_dynamic_translations
    # end

    # config.before_initialize do
    #   MyI18n::Translations.store_dynamic_translations
    # end

    # initializer 'my_i18n', before: :load_config_initializers do
    #   MyI18n::Translations.store_dynamic_translations
    # end
  end
end
