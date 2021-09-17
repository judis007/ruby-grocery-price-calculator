# frozen_string_literal: true

require_relative 'item_prices'

# :nodoc:
class Item
  PRICES = ItemPrices::CURRENT_PRICES

  class << self
    def all
      PRICES
    end

    def find_unit_price(item)
      PRICES.dig(item, 'unit_price')
    end

    def sale_price_present?(item)
      return true unless PRICES.dig(item, 'selling_price').empty?
    end

    def find_sale_price(item)
      PRICES.dig(item, 'selling_price', 'sale_price')
    end

    def count_offer_items(item)
      PRICES.dig(item, 'selling_price', 'number_of_items')
    end
  end
end
