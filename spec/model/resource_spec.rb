require "rspec"
require_relative "../../model/RestResource"

describe RestResource do
  before :each do
    @resource =  RestResource.new("testing")
  end
end

describe "#new" do
  it "takes a JSON string and creates a JSON Object with their string representation" do
    @resource.should be_an_instance_of RestResource
  end
end