class Contributor < ActiveRecord::Base
  validates :name, :title, :recipe, presence: true
end
