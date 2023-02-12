class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.belongs_to :product_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
