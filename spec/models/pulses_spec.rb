require 'rails_helper'

RSpec.describe Pulse, type: :model do
  context '.create' do
    describe 'invalid data' do
      it 'is missing pool' do
        expect(Pulse.create).not_to be_valid
      end
    end

    describe 'valid data' do
      let(:pool) { create(:pool) }

      it 'is valid with pool' do
        expect(Pulse.create(pool: pool)).to be_valid
      end
    end
  end
end
