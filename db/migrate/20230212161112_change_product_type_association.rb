class ChangeProductTypeAssociation < ActiveRecord::Migration[7.0]
  def change
    change_table :products do |t|
      t.remove_references :product_type
    end
  end

  def change
    change_table :product_types do |t|
      t.belongs_to :product
    end
  end
end
