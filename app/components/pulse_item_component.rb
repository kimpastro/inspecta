class PulseItemComponent < ApplicationComponent
  include PulseHelper

  def initialize(pulse_item:)
    @pulse = pulse_item
  end
end
