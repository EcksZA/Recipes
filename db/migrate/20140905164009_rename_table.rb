class RenameTable < ActiveRecord::Migration
  def change
    rename_table :contributors_tags, :taggables
  end
end
