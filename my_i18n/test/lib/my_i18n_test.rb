require 'test_helper'

module MyI18n
  class MyI18nTest < Minitest::Test
    def test_translation_files
      path = '/../../lib/locales/*.yml'.freeze
      files = Dir.glob(File.dirname(__FILE__) + path)

      assert_equal true, MyI18n.translation_files.size > 0
      assert_equal files.size, MyI18n.translation_files.size
    end

    def test_available_locales
      assert_equal [:en, :nl], MyI18n.available_locales
    end
  end
end
