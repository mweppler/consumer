# Consumer

TODO: Write a description

## Usage

Start the server:

    rackup -Ilib

Send test data (json) to your url:

    curl -v -H "Content-Type: application/json" -X POST -d '{"data_type":"test"}' http://localhost:9292/consume

…the Rack Request:

```
=> #<Rack::Request:0x00000002235080
 @env=
  {"CONTENT_LENGTH"=>"22",
   "CONTENT_TYPE"=>"application/json",
   "GATEWAY_INTERFACE"=>"CGI/1.1",
   "PATH_INFO"=>"/consume",
   "QUERY_STRING"=>"",
   "REMOTE_ADDR"=>"127.0.0.1",
   "REMOTE_HOST"=>"localhost",
   "REQUEST_METHOD"=>"POST",
   "REQUEST_URI"=>"http://localhost:9292/consume",
   "SCRIPT_NAME"=>"",
   "SERVER_NAME"=>"locahost",
   "SERVER_PORT"=>"9292",
   "SERVER_PROTOCOL"=>"HTTP/1.1",
   "SERVER_SOFTWARE"=>"WEBrick/1.3.1 (Ruby/1.9.3/2012-04-20)",
   "HTTP_HOST"=>"localhost",
   "HTTP_USER_AGENT"=>
    "curl/7.24.0 (x86_64-apple-darwin12.0) libcurl/7.24.0 OpenSSL/0.9.8r zlib/1.2.5",
   "HTTP_ACCEPT"=>"*/*",
   "HTTP_X_FORWARDED_FOR"=>"127.0.0.1",
   "HTTP_X_FORWARDED_HOST"=>"localhost",
   "HTTP_X_FORWARDED_SERVER"=>"localhost",
   "HTTP_CONNECTION"=>"Keep-Alive",
   "rack.version"=>[1, 1],
   "rack.input"=>
    #<Rack::Lint::InputWrapper:0x0000000156fe68
     @input=#<StringIO:0x0000000154b158>>,
   "rack.errors"=>
   #<Rack::Lint::ErrorWrapper:0x0000000156f3c8 @error=#<IO:<STDERR>>>,
   "rack.multithread"=>true,
   "rack.multiprocess"=>false,
   "rack.run_once"=>false,
   "rack.url_scheme"=>"http",
   "HTTP_VERSION"=>"HTTP/1.1",
   "REQUEST_PATH"=>"/consume"}>
```

## Contributing
1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Added some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
