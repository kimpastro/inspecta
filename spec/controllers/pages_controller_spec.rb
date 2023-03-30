require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe "GET #index" do
    before do
      get :index
    end

    it "should redirects to pool_path" do
      expect(response).to have_http_status(:redirect)

      pool = Pool.last
      expect(response).to redirect_to(pool_path(pool.hashid))
    end
    
    it "should set cookies" do
      expect(cookies[:_session_pool_id]).to be_present
    end
  end
end
