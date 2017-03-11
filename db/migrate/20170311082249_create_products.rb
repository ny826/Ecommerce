class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product,null: false
      t.string :description,null: false
      t.integer :amount,null: false

      t.timestamps null: false
    end
  end
end
