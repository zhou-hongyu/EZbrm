require 'spec_helper'

describe Location do

  describe "assocations" do
    it { should have_many :competitors }
    it { should belong_to :user}

  end

  describe "validations" do
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:latitude) }
    it { should validate_presence_of(:longitude) }
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:name) }
  end


end