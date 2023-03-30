class HeaderListComponent < ApplicationComponent
  def initialize(pool:)
    @pool = pool
  end

  def pulses_limit
    @pool.quantity
  end

  def pulse_count
    @pool.pulses.size
  end
end
