# Solution 1 
```
# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
    return 0 if nums.length < 2 || nums[0] > nums[1]
    (1...nums.length-1).each do |index|
        return index if nums[index] > nums[index+1]
    end
    return nums.length - 1
end
```
## Results
### Runtime 48ms beats 97.87%of users with Ruby
### Memory 211.56MB beats 44.68%of users with Ruby

## Notes 
Another faaaast solution
