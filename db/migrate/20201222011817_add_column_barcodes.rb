class AddColumnBarcodes < ActiveRecord::Migration[5.2]
  def up
    add_column :barcodes, :user_id, :integer
  end
end
