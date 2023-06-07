class PagesController < ApplicationController
  def index
    find_or_initialize_pool_cookie
  end

  private

  def find_or_initialize_pool_cookie
    if hashid = cookies.encrypted[:_session_pool_id]
      redirect_to pool_path(hashid)
    else
      pool = Pool.create!
      cookies.encrypted[:_session_pool_id] = pool.hashid
      redirect_to pool_path(pool)
    end
  end
end
