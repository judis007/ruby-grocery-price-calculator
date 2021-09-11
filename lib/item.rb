# frozen_string_literal: true

require_relative 'item_prices'

# :nodoc:
class Item
  PRICES = ItemPrices::CURRENT_PRICES

  def self.all
    PRICES
  end

  def self.find_unit_price(item)
    PRICES.dig(item, 'unit_price')
  end

  def self.sale_price_present?(item)
    return true unless PRICES.dig(item, 'selling_price').empty?
  end

  def self.find_sale_price(item)
    PRICES.dig(item, 'selling_price', 'sale_price')
  end

  def self.count_offer_items(item)
    PRICES.dig(item, 'selling_price', 'number_of_items')
  end
end
