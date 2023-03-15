class Pulse < ApplicationRecord
  include Hashid::Rails

  belongs_to :pool

  scope :received, -> { order(id: :desc) }

  after_create_commit  { broadcast_prepend_to pool }
  after_destroy_commit { broadcast_remove_to pool }
end
