require 'spec_helper'

describe User do

  describe "assocations" do
    it { should have_many :locations }

  end

  describe "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end

end