class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validate: quantity
  validate: product_present
  validate: order_present

  before_save: finalize

  def total_price
    product[:unitPrice] * quantity
  end

end
