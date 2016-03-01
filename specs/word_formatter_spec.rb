require 'minitest/autorun'
require 'minitest/rg'

require_relative '../models/word_formatter'

class TestWordFormatter < Minitest::Test

  def setup
    @word_formatter = WordFormatter.new('code clan')
    @formatter = WordFormatter.new('e13 zqf')
  end

  def test_camelcase
    assert_equal('CodeClan', @word_formatter.camelcase)
  end

  def test_upcase
    assert_equal('E13 ZQF', @formatter.upcase)
  end

end
