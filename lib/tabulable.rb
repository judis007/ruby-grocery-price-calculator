# frozen_string_literal: true

require 'terminal-table'

# :nodoc:
module Tabulable
  class << self
    def draw(total)
      rows = []
      money = 0
      savings = 0
      total.each do |item, attributes|
        quantity = attributes['quantity']
        price = attributes['price']
        saved_amount = attributes['savings']
        savings += saved_amount
        money += price
        rows << [item.capitalize, quantity, price.round(2)]
      end
      puts Terminal::Table.new headings: %w[Item Quantity Price], rows: rows
      puts "Total price : $#{money.round(2)}"
      puts "You saved $#{savings.round(2)} today"
    end
  end
end
