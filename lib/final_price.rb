# frozen_string_literal: true

require_relative 'item'

# :nodoc:
class FinalPrice
  def self.offer_only(name, quantity)
    number_of_items = Item.count_offer_items(name)
    sale_price = Item.find_sale_price(name)
    item_quantity = quantity / number_of_items
    item_quantity * sale_price
  end

  def self.no_offer(name, quantity)
    unit_price = Item.find_unit_price(name)
    unit_price * quantity
  end

  def self.offer_added(name, quantity)
    unit_price = Item.find_unit_price(name)
    sale_price = Item.find_sale_price(name)
    number_of_items = Item.count_offer_items(name)
    value_to_be_deducted = quantity % number_of_items
    items_with_offer = (quantity - value_to_be_deducted) / number_of_items
    (items_with_offer * sale_price) + (value_to_be_deducted * unit_price)
  end
end
