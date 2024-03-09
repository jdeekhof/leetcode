# Solution 1 
```ruby
# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
    max_index = cost.size
    total_costs = Array.new(max_index+1, 0)
    total_costs[0] = cost[0]
    total_costs[1] = cost[1]
    (2..max_index).each do |index|
        if index == max_index
            total_costs[index] = [total_costs[index-1], total_costs[index-2]].min
        else
            total_costs[index] = [total_costs[index-1], total_costs[index-2]].min + cost[index]
        end
    end
    total_costs[max_index]
end
```
## Results
Runtime 60ms Beats66.07%of users with Ruby
Memory 212.05MB Beats32.14%of users with Ruby

