class CreateOrderitems < ActiveRecord::Migration[5.2]
  def change
    create_table :orderitems do |t|
      t.belongs_to :order
      t.belongs_to :item
      t.timestamps
    end
  end
end
