# Solution 1
```javascript
/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLastWord = function(s) {
    return(s.split(' ').filter((word) => word.length > 0).pop().length)
};
```
## Results 
Runtime 51ms Beats62.50%of users with JavaScript
Memory 48.47MB Beats41.62%of users with JavaScript
## Notes 
too easy
