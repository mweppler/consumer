require "erb"

class Consumer
  def self.call(env)
    new(env).response.finish
  end

  def initialize(env)
    @request = Rack::Request.new(env)
  end

  def response
    case @request.path
    when "/consume"
      Rack::Response.new do |response|
        File.open(File.dirname(__FILE__) + '/../data/data.json', 'a') do |f|
          f.write "# Request came in at: #{Time.now}\n#{@request.params}\n---\n"
        end
        response.redirect("http://mattweppler.info")
      end
    else Rack::Response.new("Not Found", 404)
    end
  end

  def render(template)
    path = File.expand_path("../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end
end
