require "rspec"
require_relative "../../model/rest_resource"

describe RestResource do
  before :each do
    @resource =  RestResource.new '{"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}}'
  end

  describe "#new" do
    it "takes a JSON string and creates a JSON Object with their string representation" do
      @resource.should be_an_instance_of RestResource
    end

    it "parses the JSON string object in a HashMap object" do
      @resource.json_definition.json_map.should be_an_instance_of Hash
    end
  end
end

