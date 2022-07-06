class CreateFavoriteTable < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_tables do |t|
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
