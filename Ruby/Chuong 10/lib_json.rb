require 'rubygems'
require 'json'
require 'pp'
require 'net/http'
require 'httparty'

module Lib_json
  def doc_json_nethttp(url)
    uri = URI(url)
    response = Net::HTTP.get(uri)
    content = JSON.parse(response)
    return content
  end
  #content = doc_json_httparty(url)
  def doc_json_httparty(url)
    uri = URI(url)
    response = HTTParty.get(url)
    content = response.parsed_response
    pp content
  end
  
  def doc_file_json(filename)
    json = File.read(filename)
    obj = JSON.parse(json)
    return obj
  end
end