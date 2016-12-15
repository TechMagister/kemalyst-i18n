require "./spec_helper"

require "http"

I18n.load_path += ["./spec/fixtures/"]
I18n.init

describe Kemalyst::I18n::Handler do

  it "should set language from header" do
    request = HTTP::Request.new("GET", "/")
    request.headers["Accept-Language"] = "fr,en-US;q=0.7,en;q=0.3"
    io, context = create_context(request)
    handler = Kemalyst::I18n::Handler.instance
    handler.call(context)
    I18n.locale.should eq "fr"
  end

  it "should set language from complicated header" do
    request = HTTP::Request.new("GET", "/")
    request.headers["Accept-Language"] = "fr;q=0.6,en-US;q=0.7"
    io, context = create_context(request)
    handler = Kemalyst::I18n::Handler.instance
    handler.call(context)
    I18n.locale.should eq "en"
  end
  
end
