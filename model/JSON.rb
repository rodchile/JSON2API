class JSON
  attr_reader :json
  attr_writer :json
  def initialize stringJSON
    @json = stringJSON
  end
end