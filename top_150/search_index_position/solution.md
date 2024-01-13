# Solution 1

```
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    nums.each_with_index do |num, index|
        if num >= target
            return index
        end
    end
    return nums.length
end
```

### Results
## Runtime 57ms beats 82.22%of users with Ruby
## Memory 211.54MB beats 30.00%of users with Ruby

## Notes
This one was pretty easy and I'm satisfied with beating 82% of submissions.