class WordFormatter

  def initialize(string)
    @string = string
  end

  def camelcase
    @string.split.collect(&:capitalize).join
  end

  def upcase
    @string.upcase
  end

end