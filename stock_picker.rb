def stock_picker(stocks)
    optimal = Array.new
    biggest_gain = 0

    stocks.each_with_index do |stock, i|
        stocks.each do |price|
            if stocks.index(price) > i
                gain = price - stock
                if gain > biggest_gain
                    biggest_gain = gain
                    optimal[0] = i
                    optimal[1] = stocks.index(price)
                end
            end
        end
    end
    return optimal
end

print stock_picker([17,3,6,9,15,8,6,1,10])
