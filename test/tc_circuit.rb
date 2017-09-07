require_relative '../circuit'
require 'test/unit'

class TestCircuit < Test::Unit::TestCase

  def setup
    @power_not_known = Circuit.new current: 5.0, voltage: 5.0
    @current_not_known = Circuit.new power: 30.0, voltage: 5.0
    @voltage_not_known = Circuit.new power: 50.0, current: 10.0
    @delta = 0.01
  end

  def test_power
    expected = 25.0
    actual = @power_not_known.power
    assert_in_delta(expected, actual, @delta)
  end

  def test_current
    expected = 6.0
    actual = @current_not_known.current
    assert_in_delta(expected, actual, @delta)
  end

  def test_voltage
    expected = 5.0
    actual = @voltage_not_known.voltage
    assert_in_delta expected, actual, @delta
  end

  def test_incomplete_args
    assert_raise(ArgumentError) { Circuit.new voltage: 5.0 }
    assert_raise(ArgumentError) { Circuit.new current: 4.0 }

  end

end
