class Circuit

  attr_reader :power, :current

  def initialize(power: nil, current: nil, voltage: nil)

    @power = (power == nil) ? calc_power(current: current, voltage: voltage) : power
    @current = (current == nil) ? calc_current(power: power, voltage: voltage) : current
  end

  # Return the power(watts) given the current and voltage
  # current - measured in Amps
  # voltage - measured in volts
  def calc_power(current:, voltage:)

    if current == nil or voltage == nil
      raise ArgumentError, "One or more arguments are nil. Both current and voltage must have a value."    end

    current * voltage    
  end

  # Return the current(Amps) given the power and voltage
  # power - measured in watts
  # voltage - measured in volts
  def calc_current(power:, voltage:)

    if power == nil or voltage == nil
      raise ArgumentError, "One or more arguments are nil. Both power and voltage must have a value."    end

    power / voltage
  end
    
end
