require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/info'

class TestInfo < MiniTest::Test

  def setup
    @info = Info.new('Francesco', 'Palma', 22, 'Software Developer in training')
  end

  def test_name
    assert_equal('Francesco', @info.name)
  end

  def test_surname
    assert_equal('Palma', @info.surname)
  end

  def test_age
    assert_equal(22, @info.age)
  end

  def test_role
    assert_equal('Software Developer in training', @info.role)
  end

end