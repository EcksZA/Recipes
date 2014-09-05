class Contributor < ActiveRecord::Base
  validates :name, :title, :recipe, presence: true
  has_many :taggables
end
