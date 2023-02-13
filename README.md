# stock-picker-exercise
Stock picker exercise from TOP Ruby course

The objective of this exercise is to write a method that takes an array of stock prices and returns 
the most advantageous days to buy and sell. That is, what combination of buying and selling days will
give you the most profit. 

Example:
  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12

  So to do this, I want to find the combination of biggest and smallest numbers in the array where the 
  bigger number comes after the smaller one. To do this, I want to start by searching the array for the 
  largest number, disregarding the first number if it happens to be the largest. Then I want to look at the
  portion of the array before that biggest number and find the smallest number in it. [smallest[index], largest[index]]
  is what I want to return to represent the days.
