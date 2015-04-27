class CreateTrends < ActiveRecord::Migration
  def change
    create_table :trends do |t|	
      t.string :title
      t.integer :price
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
