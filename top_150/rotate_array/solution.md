# First Solution
```
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
    max = nums.length
    return nums if max == 1
    return nums if max == k
    k %= max
    nums[0...max] = nums[-k...max]+nums[0...-k]
end
```

 ## Results:
### Runtime 112ms beats 62.94%of users with Ruby
### Memory 219.96MB beats 5.24%of users with Ruby

# Second Solution
```
def rotate(nums, k)
    k.times do
        nums.unshift(nums.pop)
    end
end
```

## Results:
### Runtime 103ms beats 88.46%of users with Ruby
### Memory 219.84MB beats 7.69%of users with Ruby