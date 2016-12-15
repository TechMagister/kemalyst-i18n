require "i18n"
require "./parser"

module Kemalyst::I18n
  class Handler < Kemalyst::Handler::Base
    HEADER = "Accept-Language"

    setter set_language_from_header

    def initialize
      @set_language_from_header = true
    end

    def call(context)
      return call_next(context) if !@set_language_from_header
      languages = context.request.headers[HEADER]?
      if languages
        parser = Parser.new languages
        compat = parser.compatible_language_from ::I18n.available_locales
        ::I18n.locale = compat if compat
      end
      call_next(context)
    end
  end
end
