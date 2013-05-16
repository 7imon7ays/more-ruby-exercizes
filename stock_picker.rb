def stock_picker(stock_prices)
  best_profit = 0
  day_pairs = []

  stock_prices.each_with_index do |buy_price, buy_day|
    stock_prices[buy_day..-1].each_with_index do |sell_price, sell_day|
      if sell_price - buy_price > best_profit
        best_profit = sell_price - buy_price
        day_pairs = [buy_day,sell_day]
      end
    end
  end
  day_pairs
end

p stock_picker([200,12,13,15,200,10,5])