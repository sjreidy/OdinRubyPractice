def stock_picker(prices)
    profit = 0
    best_days = []
    buy_days = prices[0, prices.length - 1]
    sell_days = prices[1, prices.length]
    buy_days.each do |buy|
        sell_days.each do |sell|
            if sell - buy > profit && prices.index(buy) < prices.index(sell)
                    profit = sell - buy
                    best_days[0] = prices.index(buy)
                    best_days[1] = prices.index(sell)
            end
        end
    end
    "Day number #{best_days[0]} is the best day to buy. Day number #{best_days[1]} is the best day to sell. Your total profit will be #{profit}"
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
            
