class EmptyStateComponent < ApplicationComponent
  def initialize(pool:)
    @pool = pool
  end

  def unique_url
    pulse_request_url(@pool.hashid)
  end
end
