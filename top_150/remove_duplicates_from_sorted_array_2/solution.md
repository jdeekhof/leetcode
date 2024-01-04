```
# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    max = nums.length
    return max if max < 3
    i = 2
    while i < max
        if nums[i] == nums[i-2]
            nums.delete_at(i)
            max -= 1
        else i += 1
        end
    end
    return max
end
```

# Results:
 ## Runtime- 58ms Beats 93.84%of users with Ruby
 ## Memory- 211.94MB Beats 5.43%of users with Ruby