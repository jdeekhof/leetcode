# Solution 1

```
# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    possible_matches = {}
    matrix.each do |nums|
        if nums.first <= target
            nums.each do |num|
                if num == target
                    return true
                end
            end
        end
    end
    return false
end
```

## Results 
### Runtime 43ms beats 98.37%of users with Ruby
### Memory 211.54MB beats 24.39%of users with Ruby

## Notes
Pretty happy how fast it is! This is somehow a medium problem 