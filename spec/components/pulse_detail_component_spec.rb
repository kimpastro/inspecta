# frozen_string_literal: true

require "rails_helper"

RSpec.describe PulseDetailComponent, type: :component do
  let(:pool)  { create(:pool)              }
  let(:pulse) { create(:pulse, pool: pool) }

  context "show pulse details" do
    it "renders component" do
      render_inline(described_class.new(pulse: pulse))
      expect(page).to have_text(pulse.hashid)
    end
  end
end
