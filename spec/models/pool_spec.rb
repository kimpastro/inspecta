require 'rails_helper'

RSpec.describe Pool, type: :model do
  describe "internals" do
    let(:pool) { described_class.new }
    
    context "initializer" do
      it "should have identifier initialized" do
        expect(pool.identifier).to be_present
      end
    end

    context "after save" do
      before do
        pool.save
      end

      it "should have quantity defined" do
        expect(pool.reload.quantity).to eq(500)
      end
    end
  end

  describe "callbacks" do
    let(:pool) { create(:pool) }

    context "duplicated identifier" do
      let(:pool_duplicated) { described_class.new(identifier: pool.identifier) }
      
      it "should raise error on save" do
        expect { pool_duplicated.save! }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Identifier has already been taken")
      end
    end
  end
end
