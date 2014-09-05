require 'rails_helper'

describe Tag do
  it { should validate_presence_of :name }
  it { should have_many :taggables }
  it { should have_many(:contributors).through(:taggables) }
end
