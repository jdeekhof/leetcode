# First Solution
```
/**
 * @param {number[]} nums
 * @return {number}
 */
var findMin = function(nums) {
    const max_i = nums.length
    if(nums.length === 1 || nums[max_i-1]>nums[0]){
        return nums[0]
    }
    for(i = 0; i < max_i; i++){
        if(nums[i] > nums[i+1]){
            return nums[i+1]
        }
    }
};
```
## Results
### Runtime 60ms beats 21.61%of users with JavaScript
### Memory 41.56MB beats 89.35%of users with JavaScript

## Notes
I found this solution extremely quickly, but its inefficient. I am thinking if I compare from the other end of the array, I can cover twice the distance in a single loop.

# Second Solution

```
var findMin = function(nums) {
    return Math.min(...nums)
};
```

## Results
### Runtime 56ms beats 38.48%of users with JavaScript
### Memory 41.84MB beats 65.10%of users with JavaScript

## Notes
Definitely the most readable imo, but still pretty slow. Going to leave it here for now though.

