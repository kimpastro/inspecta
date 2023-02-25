class Pool < ApplicationRecord
  attribute :identifier, :string, default: SecureRandom.alphanumeric(32)
  validates :identifier, presence: true, uniqueness: true
  
  has_many :requests

  broadcasts
end
