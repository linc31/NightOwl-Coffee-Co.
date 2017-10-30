class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :prodName
      t.string :prodDesc
      t.float :unitPrice

      t.timestamps
    end
  end
end
