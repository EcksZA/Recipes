require 'rails_helper'

describe Taggable do
  it {should validate_presence_of :contributor_id }
end
