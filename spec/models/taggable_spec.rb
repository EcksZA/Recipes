require 'rails_helper'

describe Taggable do
  it { should belong_to :contributor }
  it { should belong_to :tag }
  it { should validate_presence_of :contributor_id }
  it { should validate_presence_of :tag_id }
  it { should validate_uniqueness_of(:contributor_id).scoped_to(:tag_id) }
end
