class DropTable < ActiveRecord::Migration
  def change
    drop_table :taggables
  end
end
