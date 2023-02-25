require 'rails_helper'

RSpec.describe RequestService do
  describe "definitions" do
    it "has HTTP_METHODS const" do
      expect(described_class::HTTP_METHODS).to eq(%w[GET POST PUT PATCH DELETE OPTIONS])
    end
    
    it "has NOT_ALLOWED_HEADERS const" do
      expect(described_class::NOT_ALLOWED_HEADERS).to eq(%w[HTTP_UPGRADE_INSECURE_REQUESTS HTTP_COOKIE])
    end
  end
end
