require_relative "json_resource"

class RestResource
  attr_reader :json_definition
  attr_writer :json_definition

  # @param json [Object]
  def initialize json
    @json_definition =  JSONResource.new json
  end

end