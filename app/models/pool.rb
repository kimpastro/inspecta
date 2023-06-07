class Pool < ApplicationRecord
  include Hashid::Rails

  has_many :pulses, dependent: :destroy

  def create_pulse(params)
    pulses.create!()
  end
end
