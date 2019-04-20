def stock_picker(prices)
  max_profit = 0
  buy_sell = []
  
  prices[0..-2].each.with_index do |buy_price, buy_index|
    prices[buy_index+1..-1].each.with_index(buy_index+1) do |sell_price, sell_index|
      profit = sell_price - buy_price
      
      if profit > max_profit
        buy_sell = [buy_index, sell_index]
        max_profit = profit
      end
    end
  end
  
  buy_sell
end


#sample usage
puts stock_picker([17,3,6,9,15,8,6,1,10])
