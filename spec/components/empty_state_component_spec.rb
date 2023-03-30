require "rails_helper"

RSpec.describe EmptyStateComponent, type: :component do
  let(:pool) { create(:pool) }
  
  context "When pool have pulses" do
    let!(:pulse) { create(:pulse, pool: pool) }
    
    it "should not render" do
      render_inline(described_class.new(pool: pool))
      expect(page).not_to have_text("Welcome to Inspecta")
    end
  end
  
  context "When pool have no pulses" do
    it "should render" do
      render_inline(described_class.new(pool: pool))
      expect(page).to have_text("Welcome to Inspecta")
    end
  end
end
