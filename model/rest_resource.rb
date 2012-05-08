require_relative "json_resource"

class RestResource
  attr_accessor :json_definition
  
  # @param json [Object]
  def initialize json
    @json_definition =  JSONResource.new json
  end

end