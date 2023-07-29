class Recently
  def call(from = 2)
    Pool.where(created_at: from.days.ago)
  end
end

class Pool < ApplicationRecord
  include Hashid::Rails

  has_many :pulses, dependent: :destroy

  def create_pulse(params)
    pulses.create!()
  end

  # scope :recently, ->(from = 2) { where(created_at: from.days.ago) }
  scope :recently, Recently.new
end
