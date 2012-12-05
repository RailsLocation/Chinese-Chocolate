class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.string :address
      t.string :post

      t.timestamps
    end
  end
end
