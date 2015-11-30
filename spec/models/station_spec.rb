require 'rails_helper'

RSpec.describe Station, type: :model do
  subject { create(:station) }

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
