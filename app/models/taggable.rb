class Taggable < ActiveRecord::Base
  belongs_to :contributor
  belongs_to :tag
  validates :contributor_id, presence: true
end
