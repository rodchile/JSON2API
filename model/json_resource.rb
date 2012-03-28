require "json"

class JSONResource
  attr_reader :json
  attr_writer :json
  attr_reader :json_map
  def initialize string_json
    @json = string_json
    @json_map = JSON.parse(json)
  end
end