# Solution 1  
```javascript
/**
 * @param {number[]} nums
 * @return {string[]}
 */
var summaryRanges = function(nums) {
    let begin = nums[0]
    let results = []
    const max_len = nums.length
    for(i = 0; i < max_len; i++){
        if(nums[i]+1 === nums[i+1]){}
        else if(nums[i] === begin){
            results.push(String(nums[i]))
            begin = nums[i+1]
        }
        else {
            results.push(`${begin}->${nums[i]}`)
            begin = nums[i+1]
        }
    }
    return(results)
};
```
## Results 
Runtime 54ms Beats 34.29%
Memory 48.71MB Beats 52.54%
## Notes 

