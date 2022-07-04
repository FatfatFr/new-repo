class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.boolean :available
      t.text :description
      t.integer :price_per_day

      t.timestamps
    end
  end
end
