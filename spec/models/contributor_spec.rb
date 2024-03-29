require 'rails_helper'

describe Contributor do
  it { should validate_presence_of :name }
  it { should validate_presence_of :title }
  it { should validate_presence_of :recipe }
  it { should have_many :taggables }
  it { should have_many(:tags).through(:taggables) }
end
