require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:user_type) }

    it { should have_many(:agenda_items) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_numericality_of(:adventure_score).is_less_than(5).is_greater_than_or_equal_to(0) }

    it { should validate_numericality_of(:beachwater_score).is_less_than(5).is_greater_than_or_equal_to(0) }

    it { should validate_presence_of(:first_name) }

    it { should validate_numericality_of(:freetime_score).is_less_than(5).is_greater_than_or_equal_to(0) }

    it { should validate_presence_of(:last_name) }

    it { should validate_numericality_of(:nightlife_score).is_less_than(5).is_greater_than_or_equal_to(0) }

    it { should validate_presence_of(:phone_number) }

    it { should validate_presence_of(:walkup_song) }

    end
end
