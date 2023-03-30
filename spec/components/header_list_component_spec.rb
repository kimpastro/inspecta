require "rails_helper"

RSpec.describe HeaderListComponent, type: :component do
  let(:pool) { create(:pool) }
  
  context "When pool have pulses" do
    let!(:pulse) { create(:pulse, pool: pool) }
    
    it "show pulse_count positive" do
      render_inline(described_class.new(pool: pool))
      counter_text = "#{pool.pulses.size}/#{pool.quantity}"
      
      expect(page).to have_text(counter_text)
    end
  end
  
  context "When pool have no pulses" do
    it "shows pulse_count as zero" do
      render_inline(described_class.new(pool: pool))
      
      counter_text = "0/#{pool.quantity}"
      expect(page).to have_text(counter_text)
      expect(page).to have_text("Waiting for requests")
    end
  end
end
