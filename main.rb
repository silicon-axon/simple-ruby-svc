require 'sinatra'

get '/' do
  json = {}
  json["request.env"] = request.env
  json["env"] = ENV.to_h

  content_type 'application/json'
  json.to_json
end
