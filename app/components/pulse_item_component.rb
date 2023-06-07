class PulseItemComponent < ApplicationComponent
  include PulseHelper

  def initialize(pulse_item:)
    @pulse = pulse_item
  end

  def show_date
    "#{l(@pulse.created_at, format: :with_sec)} UTC"
  end

  def turbo_frame_id
    "#{@pulse.hashid}_item"
  end

  def tag_color
    http_tag(@pulse.http_method)
  end
end
