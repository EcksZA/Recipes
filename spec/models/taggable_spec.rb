require 'rails_helper'

describe Taggable do
  it { should belong_to :contributor }
  it { should belong_to :tag}
end
