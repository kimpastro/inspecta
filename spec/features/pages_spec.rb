require 'rails_helper'

RSpec.feature "Pages", type: :feature do
  context "index" do
    describe "first access" do
      before do
        visit root_path
      end

      it "should create a pool" do
        expect(Pool.any?).to be_truthy
      end

      it "should redirect to /pool/:id" do
        id = Pool.last.hashid
        expect(page).to have_current_path(pool_path(id))
      end
    end  
  end
end
