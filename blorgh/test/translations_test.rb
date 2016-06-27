require 'test_helper'

class TranslationsTest < ActiveSupport::TestCase
  test "dynamically loaded translations are available" do
    # These should be able to load from within an initializer?
    # MyI18n::Translations.store_dynamic_translations

    assert_equal 'Prefix: Base label test value',
                 I18n.t('my_i18n.child_label')
  end
end
