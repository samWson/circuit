class Circuit

  attr_reader :power, :current

  def initialize(power: nil, current: nil, voltage: nil)

    @power = (power == nil) ? calc_power(current: current, voltage: voltage) : power

  end

  # Return the power(watts) given the current and voltage
  # current - measured in Amps
  # voltage - measured in volts
  def calc_power(current:, voltage:)

    if current == nil or voltage == nil
      raise ArgumentError, "One or more arguments are nil. Both current and voltage must have a value."
    end

    current * voltage
    
  end

end
