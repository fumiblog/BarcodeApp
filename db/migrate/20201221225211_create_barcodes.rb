class CreateBarcodes < ActiveRecord::Migration[5.2]
  def change
    create_table :barcodes do |t|

      t.timestamps
    end
  end
end
