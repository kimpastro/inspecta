class PulseDetailComponent < ApplicationComponent
  include PulseHelper

  def initialize(pulse:)
    @pulse = pulse
  end

  def pool_id
    Pool.encode_id(@pulse.pool_id)
  end

  def render?
    !!@pulse
  end
end
