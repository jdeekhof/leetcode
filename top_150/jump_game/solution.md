# First Solution
```
/**
 * @param {number[]} nums
 * @return {boolean}
 */
var canJump = function(nums) {
    if(nums.length === 1){
        return true
    }
    let max_window = 0
    for (let i = 0; i < nums.length-1; i++) {
        max_window = Math.max(...[nums[i] + i, max_window])
        if(max_window < i+1){ break }
        if(max_window >= nums.length-1){
            return true
        }
    }
    return false
};
```
## Results
Runtime 63ms beats 65.33%of users with JavaScript
Memory 46.94MB beats 20.47%of users with JavaScript
## Notes
This solution was pretty quick to find which felt nice, I liked the window approach but the 0's feel like the edge case that I really want to look for in order to optimize this guy.
My js is a bit rusty though, :flushed:.

# Second Solution
```
/**
 * @param {number[]} nums
 * @return {boolean}
 */
var canJump = function(nums) {
    if(nums.length === 1){
        return true
    }
    let max_window = 0
    for (let i = 0; i < nums.length; i++) {
        if(i > max_window){ return false }
        max_window = Math.max(nums[i] + i, max_window)
    }
    return true
};
```
## Results
### Runtime 58ms beats 83.12%of users with JavaScript
### Memory 46.04MB beats 71.46%of users with JavaScript

## Notes
I didn't even need to really rethink the algorithm to get a pretty big speed boost. I just needed to get rid of some of the unneccesary addition/subttractions, and flip the happy path. 