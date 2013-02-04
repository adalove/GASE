require 'pry'
require 'rainbow'
require_relative 'functions'
require_relative 'clients'
require_relative 'gase'
require_relative 'portfolios'


response = menu
while response != 'Q'
  case response
  when '1' then existing_client; gets
  when '2' then add_new_client; gets
  when '3' then admin
  end

  response = menu
end