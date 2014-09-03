class ChangeColumnDataTypeToText < ActiveRecord::Migration
  def change
    remove_column :contributors, :recipe
    add_column :contributors, :recipe, :text
  end
end
