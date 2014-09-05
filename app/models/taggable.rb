class Taggable < ActiveRecord::Base
  belongs_to :contributor
  belongs_to :tag
  validates :contributor_id, presence: true
  validates :tag_id, presence: true
  validates_uniqueness_of :contributor_id, scope: :tag_id
end
