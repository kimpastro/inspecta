class HeaderListComponent < ApplicationComponent
  def initialize(pool:)
    @pool = pool
  end

  def requests_counter
    "#{pulse_count} / #{pulses_limit}"
  end

  private

  def pulses_limit
    @pool.quantity
  end

  def pulse_count
    @pool.pulses.size
  end
end
