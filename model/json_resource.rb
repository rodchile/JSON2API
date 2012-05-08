require "json"

class JSONResource
  attr_reader :json_map
  attr_accessor :json
  def initialize string_json
    @json = string_json
    @json_map = JSON.parse(json)
  end
end