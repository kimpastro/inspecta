require 'rails_helper'

RSpec.describe Constants do
  it "defines SUPPORTED_VERBS" do
    expect(described_class::SUPPORTED_VERBS).to eq(%w[GET POST PUT PATCH DELETE OPTIONS])
  end
end
