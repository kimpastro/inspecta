require "rails_helper"

RSpec.describe PulseItemComponent, type: :component do
  let(:pool)  { create(:pool)              }
  let(:pulse) { create(:pulse, pool: pool) }

  context "show pulse details" do
    it "renders component" do
      render_inline(described_class.new(pulse_item: pulse))
      expect(page).to have_text(pulse.hashid)
    end
  end
end
