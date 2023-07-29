class Pulse < ApplicationRecord
  include Hashid::Rails

  belongs_to :pool, counter_cache: :pulses_count

  scope :newest_first, -> { order(id: :desc) }

  after_create_commit :broadcast_pulse_creation
  after_destroy_commit -> { broadcast_remove_to pool, target: "#{self.hashid}_item" }

  def broadcast_pulse_creation
    broadcast_prepend_to pool,
                         target: "pulses",
                         html: ApplicationController.render(PulseItemComponent.new(pulse_item: self), layout: false)

    broadcast_replace_to pool,
                         target: :header_pulse_list,
                         html: ApplicationController.render(HeaderListComponent.new(pool: self.pool), layout: false)
  end

  def json_header
    JSON.parse headers.gsub('=>', ':')
  end
end
