require_relative "DateCalculator"
require "minitest/autorun"

class TestDateCalculator < Minitest::Test
  def helper_leapyear(year)
    calc = DateCalculator.new(0)
    calc.year = year
    return calc.leap_year?
  end

  def test_leapyear
    # It should occur every 4 years
    assert helper_leapyear(2004)
    # But not every 100 years
    refute helper_leapyear(1900)
    # But should every 400 years
    assert helper_leapyear(2000)

  end
end
