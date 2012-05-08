require "rspec"
require_relative "../../model/json_resource"

describe JSONResource do

  before :each do
    @json_resource = JSONResource.new '{"menu": {
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
    it "parses a JSON string to a Hash representation" do
          @json_resource.json_map.should be_an_instance_of Hash
          json_hash = @json_resource.json_map
          puts json_hash.keys
     end
  end
end