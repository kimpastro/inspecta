class Request < ApplicationRecord
  belongs_to :pool
  broadcasts_to :pool
end


