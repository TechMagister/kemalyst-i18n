require "kemalyst"
require "./kemalyst-i18n/*"

module Kemalyst::I18n
  extend self

  def config
    yield I18n.config
  end
  
end
