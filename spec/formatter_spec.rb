require 'minitest/autorun'
require_relative '../lib/formatter'

class FormatterTest < Minitest::Test

  def setup
    @formatter = Formatter::PhoneNumber::UK
  end

  def test_verify_length_returns_error
    #assert_equal "Phone number is not 11 digits long", @formatter.verify_length("1234567")
    assert_equal "Phone number is not 11 digits long", @formatter.verify_length("246810")
  end

  def test_verify_length_returns_true
    #assert_equal true, @formatter.verify_length("12345678901")
    assert_equal true, @formatter.verify_length("07782288139")
  end

  def test_verify_type_returns_error
    #assert_equal "String is not a valid number", @formatter.verify_type("O116O222O2O")
    assert_equal "String is not a valid number", @formatter.verify_type("A116O222B2C")
  end

  def test_verify_type_returns_true
    assert_equal true, @formatter.verify_type("01162722727")
  end

  def test_is_valid_return_error
    assert_equal "Invalid phone number", @formatter.is_valid?("A116O222B2C")
  end

  def test_is_valid_return_true
    assert_equal true, @formatter.is_valid?("07782288139")
  end

  def test_format_returns_formatted_number
    assert_match "+447782288139", @formatter.format("07782288139")
  end

end