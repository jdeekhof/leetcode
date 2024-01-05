```
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max_profit = 0
  left, right = 0, 1
  while right < prices.size 
    if prices[left] < prices[right]
      profit = prices[right] - prices[left]
      max_profit = [max_profit, profit].max
    else
      left = right
    end
    right +=1
  end
  max_profit
end
```

## Results:
### Runtime 140ms beats 93.02%of users with Ruby
### Memory 221.18MB beats 26.90%of users with Ruby