# frozen_string_literal: true

# :nodoc:
class ItemPrices
  CURRENT_PRICES = {
    'milk' => {
      'unit_price' => 3.97,
      'selling_price' => {
        'number_of_items' => 2,
        'sale_price' => 5.0
      }
    },
    'bread' => {
      'unit_price' => 2.17,
      'selling_price' => {
        'number_of_items' => 3,
        'sale_price' => 6.0
      }
    },
    'banana' => {
      'unit_price' => 0.99,
      'selling_price' => {}
    },
    'apple' => {
      'unit_price' => 0.89,
      'selling_price' => {}
    }
  }.freeze
end
