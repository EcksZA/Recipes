require 'rails_helper'

describe Contributor do
  it { should validate_presence_of :name }
  it { should validate_presence_of :title }
end
