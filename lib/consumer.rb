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
      if @request.env["CONTENT_TYPE"].eql? 'application/json'
        request_params = @request.env["rack.input"].gets
      else
        request_params = @request.params
      end
      File.open(File.dirname(__FILE__) + '/../data/data.json', 'a') do |f|
        f.write "# Request came in at: #{Time.now}\n#{request_params}\n---\n"
      end
      Rack::Response.new("Ok", 200)
    else Rack::Response.new("Not Found", 404)
    end
  end

  def render(template)
    path = File.expand_path("../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end
end
