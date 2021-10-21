class Bike

  attr_reader :working

  def initialize
    @working = true
  end

  def working?(status)
    @working = status
  end
end