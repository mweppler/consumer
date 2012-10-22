require 'rack'
require 'consumer'

use Rack::Reloader, 0
#use Rack::Auth::Basic do |username, password|
#  username == 'user'
#  password == 'password'
#end
#use Rack::Static
#run Consumer

run Rack::Cascade.new([Rack::File.new("public"), Consumer])
