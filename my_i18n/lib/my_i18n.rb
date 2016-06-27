module MyI18n
  def self.translation_files
    path = '/locales/*.yml'.freeze
    @files ||= Dir.glob(File.dirname(__FILE__) + path)
  end

  def self.available_locales
    @locales ||= translation_files.collect { |f|
      File.basename(f, '.yml').to_sym
    }.uniq
  end
end

require 'my_i18n/localisation'
require 'my_i18n/translations'
