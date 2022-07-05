class AddPhotoToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :item_photo, :string
  end
end
