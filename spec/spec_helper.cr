require "spec"
require "../src/kemalyst-i18n"

def create_context(request)
  io = IO::Memory.new
  response = HTTP::Server::Response.new(io)
  context = HTTP::Server::Context.new(request, response)
  return io, context
end
