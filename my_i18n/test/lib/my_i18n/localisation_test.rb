require 'test_helper'

module MyI18n
  class LocalisationTest < Minitest::Test
    def test_available_locales
      assert_equal [:en, :nl], I18n.available_locales
    end
  end
end
