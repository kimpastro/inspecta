require 'rails_helper'

RSpec.describe "Api::Pulses", type: :request do
  let(:pool) { create(:pool) }

  describe "Success" do
    Constants::HTTP_METHODS.each do |h|
      context "#{h.upcase} /pulse/pool.hashid" do
        before do
          send(h, pulse_request_path(pool.hashid))
        end

        it "should return success" do
          expect(response).to have_http_status(200)
        end

        it "should create pulse into pool" do
          expect(pool.reload.pulses.size).to be_positive
        end
      end
    end
  end

  describe "Error" do
    context "Invalid http method" do
      before do
        head pulse_request_path(pool.hashid)
      end

      it "should return method not allowed" do
        expect(response).to have_http_status(405)
      end
    end
  end
end
