# frozen_string_literal: true

require_relative 'item'

# :nodoc:
class Savings
  class << self
    def amount(name, quantity, final_price)
      unit_price = Item.find_unit_price(name)
      normal_price = unit_price * quantity
      normal_price - final_price
    end
  end
end
