class CreateTable < ActiveRecord::Migration
  def change
    create_table :taggables do |t|
      t.integer :contributor_id
      t.integer :tag_id
    end
  end
end
