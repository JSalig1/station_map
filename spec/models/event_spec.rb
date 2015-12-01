require 'rails_helper'

RSpec.describe Event, type: :model do
  subject { create(:event) }

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:end_date) }
    it { should validate_presence_of(:start_date) }
  end
end
