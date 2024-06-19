def stock_picker(stock_prices)
    buy_at_index = 0
    sell_at_index = 1
    greatest_profit = stock_prices[1] - stock_prices[0]

    stock_prices.each_with_index do |buy_val, buy_index|
        stock_prices.each_with_index do |sell_val, sell_index|
            if sell_index > buy_index && sell_val - buy_val > greatest_profit
                buy_at_index = buy_index
                sell_at_index = sell_index
                greatest_profit = sell_val - buy_val
            end
        end
    end

    buy_sell_arr = [buy_at_index, sell_at_index]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])