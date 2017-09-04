class Circuit

  attr_reader :power

  def initialize(power: nil, current: nil, voltage: nil)

    @power = (power == nil) ? calc_power(current: current, voltage: voltage) : power

  end

  # Return the power given the current and voltage
  def calc_power(current:, voltage:)

    if current == nil or voltage == nil
      raise ArgumentError
    end

    current * voltage
    
  end

end
