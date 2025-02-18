# Solution 1 
```javascript
/**
 * @param {number[]} nums
 * @return {number[]}
 */
var productExceptSelf = function(nums) {
    let n = nums.length;
    let prefix = new Array(n).fill(1);
    let suffix = new Array(n).fill(1);
    let ans = new Array(n).fill(1);

    // Fill prefix array
    for (let i = 1; i < n; i++) {
        prefix[i] = prefix[i - 1] * nums[i - 1];
    }

    // Fill suffix array
    for (let i = n - 2; i >= 0; i--) {
        suffix[i] = suffix[i + 1] * nums[i + 1];
    }

    // Calculate the result
    for (let i = 0; i < n; i++) {
        ans[i] = prefix[i] * suffix[i];
    }

    return ans;
};
```

