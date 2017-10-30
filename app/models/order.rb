class Order < ApplicationRecord
    has_many :line_items
    has_many :products, though: :line_items
end
