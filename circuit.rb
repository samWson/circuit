class Circuit

  attr_reader :power, :current, :voltage

  def initialize(power: nil, current: nil, voltage: nil)

    @power = (power == nil) ? calc_power(current: current, voltage: voltage) : power
    @current = (current == nil) ? calc_current(power: power, voltage: voltage) : current
    @voltage = (voltage == nil) ? calc_voltage(power: power, current: current) : voltage
    
  end

  private

  # Return the power(watts) given the current and voltage
  # current - measured in Amps
  # voltage - measured in volts
  def calc_power(current:, voltage:)
    check_nil_args current, voltage
    current * voltage    
  end

  # Return the current(Amps) given the power and voltage
  # power - measured in watts
  # voltage - measured in volts
  def calc_current(power:, voltage:)
    check_nil_args power, voltage
    power / voltage
  end

  # Return the voltage(volts) given the power and current
  # power - measured in watts
  # current - measured in Amps
  def calc_voltage(power:, current:)
    check_nil_args power, current
    power / current
  end
  
  # Raise an ArgumentError if there are nil arguments
  def check_nil_args(arg1, arg2)
    
    if arg1 == nil or arg2 == nil
      raise ArgumentError, "One or more arguments are nil. At lease two arguments out of power, current, and voltage must have a value."
    end
  end

end
