```
def can_complete_circuit(gas, cost)
    return -1 if cost.sum() > gas.sum()
    total = 0
    start = 0
    (0...gas.length).each do |index|
        total += (gas[index] - cost[index])
        if total < 0
            total = 0
            start = index + 1
        end
    end
    return start
end
```

results: 
Runtime-143ms Beats 81.36%of users with Ruby
Memory- 223.77MB Beats 42.37%of users with Ruby