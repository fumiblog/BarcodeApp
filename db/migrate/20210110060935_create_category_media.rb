class CreateCategoryMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :category_media do |t|
      t.string :name
      t.string :category_url
      t.integer :parent_category_id

      t.timestamps
    end
  end
end
