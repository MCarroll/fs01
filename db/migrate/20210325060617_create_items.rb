class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :short_name
      t.string :name
      t.string :sku
      t.string :price
      t.weighable :weight #https://github.com/greenbits/weighable
      t.string :weight_type
      t.string :width
      t.string :height
      t.string :bulk
      t.string :bulk_description
      t.string :bulk_qty
      t.references :item, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
