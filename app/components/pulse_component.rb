class PulseComponent < ApplicationComponent
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

  def sanitize_header_key(key)
    key.gsub(/^HTTP_/, '').downcase
  end

  def show_date
    "#{l(@pulse.created_at, format: :with_sec)} UTC - (#{time_ago_in_words(@pulse.created_at)} ago)"
  end

  def show_byte_size
    "#{@pulse.size} bytes"
  end
end
