class ErrorAlchemist
  attr_reader :keywords, :concepts, :sentiment

  def initialize
    @keywords = ["in", "case", "of error"]
    @concepts = ["Should I Send This is currently under maintenance."]
    @sentiment = 1
  end

end