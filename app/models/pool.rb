class Pool < ApplicationRecord
  include Hashid::Rails
  
  has_many :pulses
end
