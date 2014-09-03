class CreateJoinsTable < ActiveRecord::Migration
  def change
    create_join_table :contributors, :tags
  end
end
