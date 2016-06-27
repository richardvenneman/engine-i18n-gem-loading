require 'test_helper'

module MyI18n
  class TranslationsTest < Minitest::Test
    def test_dynamic_translations_store
      MyI18n::Translations.store_dynamic_translations

      assert_equal 'Prefix: Base label test value',
                   I18n.t('my_i18n.child_label')
    end
  end
end
