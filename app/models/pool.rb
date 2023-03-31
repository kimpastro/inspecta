class Pool < ApplicationRecord
  include Hashid::Rails

  has_many :pulses, dependent: :destroy
end
