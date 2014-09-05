require 'rails_helper'

describe Taggable do
  it { should belong_to :contributor }
  it { should belong_to :tag }
  it { should validate_presence_of :contributor_id }
end
