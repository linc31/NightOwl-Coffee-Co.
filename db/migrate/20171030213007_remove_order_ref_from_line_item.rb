class RemoveOrderRefFromLineItem < ActiveRecord::Migration[5.1]
  def change
    remove_reference :line_items, :orders, foreign_key: true
  end
end
