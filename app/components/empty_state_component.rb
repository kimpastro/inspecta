class EmptyStateComponent < ApplicationComponent
  def initialize(pool:)
    @pool = pool
  end

  def render?
    @pool.pulses.empty?
  end
end
