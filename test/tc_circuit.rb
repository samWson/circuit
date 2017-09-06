require_relative '../circuit'
require 'test/unit'

class TestCircuit < Test::Unit::TestCase

  def setup
    @power_not_known = Circuit.new current: 5.0, voltage: 5.0
  end

  def test_power
    expected = 25.0
    actual = @power_not_known.power
    delta = 0.1
    assert_in_delta(expected, actual, delta)
  end

  def test_incomplete_args
    assert_raise(ArgumentError) { Circuit.new voltage: 5.0 }
    assert_raise(ArgumentError) { Circuit.new current: 4.0 }
  end

end
