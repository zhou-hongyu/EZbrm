require 'spec_helper'

describe Competitor do

  describe "assocations" do
    it { should belong_to :location}

  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:image_url) }
    it { should validate_presence_of(:review_count) }
    it { should validate_presence_of(:category) }
  end


end