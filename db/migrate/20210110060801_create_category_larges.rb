class CreateCategoryLarges < ActiveRecord::Migration[5.2]
  def change
    create_table :category_larges do |t|
      t.string :name
      t.string :category_url

      t.timestamps
    end
  end
end
