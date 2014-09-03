class Contributor < ActiveRecord::Base
  validates :name, :title, presence: true
end
