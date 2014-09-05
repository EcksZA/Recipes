class Taggable < ActiveRecord::Base
  belongs_to :contributor
  belongs_to :tag
end
