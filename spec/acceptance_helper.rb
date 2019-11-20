require 'rails_helper'
require 'rspec_api_documentation'
require 'rspec_api_documentation/dsl'

RspecApiDocumentation.configure do |config|
  config.format = [:api_blueprint, :html]
  config.request_body_formatter = :json
  config.request_headers_to_include = %w[Content-Type Accept]
  config.response_headers_to_include = %w[Content-Type]
  config.api_name = "Rails API Template"
  config.curl_host = 'https://www.examplehost.com'
  config.api_explanation = "This API Documentation describes the collections that are contained in the backend project for the Rails API Template."
end

def json_collection(collection)
  collection.to_json
end

def json_item(item)
  item.to_json
end

def json
  JSON.parse(response_body)
end
