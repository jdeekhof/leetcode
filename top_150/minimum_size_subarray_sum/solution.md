# Solution 1

```
# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(target, nums)
    return 0 if nums.sum < target
    return 1 if nums.max >= target
    (1...nums.length).each do |window|
        (0...nums.length-window).each do |i|
            if nums[i...i+window+1].sum >= target
                return window + 1
            end
        end
    end
end
```

Exponential, so this does not solve the issue, I think I can do this in a single loop.

# Solution 2

```
# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(target, nums)
    return 0 if nums.sum < target
    return 1 if nums.max >= target
    left = 0 
    right = 0
    window_sum = 0
    min_window_length = nums.length
    while right < nums.length
        window_sum += nums[right]
        
        while window_sum - nums[left] >= target
            window_sum -= nums[left]
            left += 1
        end

        window_length = right - left + 1

        if window_sum >= target && window_length < min_window_length
            min_window_length = window_length
        end

        right += 1
    end

    return min_window_length
end
```

## Results 
### Runtime 95ms beats 35.29%of users with Ruby
### Memory 214.43MB beats 19.12%of users with Ruby

## Notes
This is utilizes a sliding window algorithm. The core of the algorithm is to iterate over the right index, adding the value of the index until the target is reached. Once it is reached, we move the left pointer one by one until the target is no longer reached. If the window is less than then minimum window of previous iterations, we save the window as the minimum and continue until the right side reaches the end.  
