class Tag < ActiveRecord::Base
  validates :name, presence: true
  has_many :taggables
  has_many :contributors, through: :taggables
end
