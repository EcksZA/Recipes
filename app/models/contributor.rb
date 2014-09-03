class Contributor < ActiveRecord::Base
  validates :name, :title, :recipe, presence: true
  has_and_belongs_to_many :tags
end
