class Pool < ApplicationRecord
  include Hashid::Rails
  
  has_many :requests
end
