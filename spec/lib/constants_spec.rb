require 'rails_helper'

describe Constants do
  it "defines HTTP_METHODS" do
    expect(described_class::HTTP_METHODS).to eq(%i(get post put patch delete options))
  end
end
