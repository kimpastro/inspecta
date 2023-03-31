
require 'rails_helper'
RSpec.describe Pool, type: :model do
  context '.create' do
    before do
      @pool = Pool.create
    end

    it 'is valid without parameter' do
      expect(@pool).to be_valid
    end

    it 'have default quantity' do
      expect(@pool.quantity).to be_positive
    end

    it 'have counter_cache pulses_count as 0' do
      expect(@pool.pulses_count).to be_zero
    end

    it 'have hashid method' do
      expect(@pool).to respond_to(:hashid)
    end
  end

  context '#destroy' do
    let(:pool) { create(:pool) }

    describe 'with pulses' do
      before do
        @pulse = pool.pulses.create
      end

      it 'is destroyed' do
        expect(pool.destroy).to be_destroyed
      end

      it 'have destroyed all related pulses' do
        pool.destroy
        expect(@pulse).to be_destroyed
      end
    end

    describe 'without pulses' do

      it 'is destroyed' do
        expect(pool.destroy).to be_destroyed
      end
    end
  end
end
