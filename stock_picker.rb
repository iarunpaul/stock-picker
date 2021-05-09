
def stock_picker(prices)
    index_days_profit = Hash.new(nil)
    prices.each_with_index do |price, p_index|
        range_array = prices[p_index + 1...prices.length] # a range array of all values after the current price
        p_index < prices.length - 1 ? max_price = range_array.max : break # avoid last element iteration for max value
        max_index = range_array.index(max_price) + p_index + 1 # find the index of max value  in the prices array
        profit = max_price - price
        index_days_profit[[p_index, max_index]] = profit # use days combo array as key for profit hash
    end
    array_days = index_days_profit.to_a
    array_days_sorted = array_days.sort { |a, b| b[1] <=> a[1] } # sort descending with 2nd element of nested array
    return array_days_sorted[0][0]

end