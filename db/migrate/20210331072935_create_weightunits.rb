class CreateWeightunits < ActiveRecord::Migration[6.1]
  def change
    create_table :weightunits do |t|
      t.string :unit

      t.timestamps
    end
  end
end
