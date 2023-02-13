def stock_picker(array)
  greatest_number = array[0]
  greatest_index = 0
  smallest_number = array[0]
  smallest_index = 0

  array.each_with_index do |cost, ind|
    if cost > greatest_number
      greatest_number = cost
      greatest_index = ind
    end
  end

  array.each_with_index do |cost, ind|
    unless ind >= greatest_index
      if cost < smallest_number
        smallest_number = cost
        smallest_index = ind
      end
    end
  end

  buy_day = smallest_index + 1
  sell_day = greatest_index + 1
  buy_sell = [buy_day, sell_day]

  puts buy_sell
  return buy_sell
end

stock_picker([20, 13, 43, 87, 46, 14, 93, 12, 67, 36])
      