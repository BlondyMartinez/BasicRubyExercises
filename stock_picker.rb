def stock_picker(arr)
  best_profit = 0
  best_days = []
  arr.each_with_index do |buy_price, buy_day|
    arr.each_with_index do |sell_price, sell_day|
      #skips if sell day happens before buy day
      next if sell_day <= buy_day
  
      profit = sell_price - buy_price
      
      if profit > best_profit
        best_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end
  
  best_days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
