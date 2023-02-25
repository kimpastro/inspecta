require 'rails_helper'

RSpec.describe "Request", type: :request do
  describe "All supported http methods" do
    let(:pool) { create(:pool) }

    RequestService::HTTP_METHODS.map(&:downcase).each do |http_method|
      before do
        send(http_method, api_request_path(pool))
      end
      
      it "should accept #{http_method}" do
        expect(response).to have_http_status(200)
      end

      it "should have a request registered" do
        expect(pool.requests).to be_present
      end
    end
  end
end
