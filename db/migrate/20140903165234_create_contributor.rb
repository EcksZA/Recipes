class CreateContributor < ActiveRecord::Migration
  def change
    create_table :contributors do |t|
      t.string :name
      t.string :title
      t.string :recipe
    end
  end
end
