class Pulse < ApplicationRecord
  include Hashid::Rails

  belongs_to :pool

  scope :received, -> { order(id: :desc) }

  after_create_commit -> { 
    broadcast_prepend_later_to pool, target: "pulses", partial: "pulses/pulse_item", locals: { pulse: self }
    broadcast_replace_later_to pool, target: :header_pulse_list, partial: "pulses/header_list", locals: { quantity_of_pulses: self.pool.pulses.size, total_pulses: self.pool.quantity }
  }

  after_destroy_commit -> { broadcast_remove_to pool, target: "#{self.hashid}_item" }
end
