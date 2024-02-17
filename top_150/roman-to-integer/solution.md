# Solution 1  
```javascript
/**
 * @param {string} s
 * @return {number}
 */
var romanToInt = function(s) {
    const translations = {
        'I' : 1,
        'V' : 5,
        'X' : 10,
        'L' : 50,
        'C' : 100,
        'D' : 500,
        'M' : 1000,
    }
    sum = 0
    for (let i = 0; i < s.length; i++) {
        if (translations[s[i]] < translations[s[i+1]]){
            sum += translations[s[i+1]] - translations[s[i]]
            i += 1
        }
        else{
            sum += translations[s[i]]
        }
    }
    return sum
};
```
## Results 
Runtime 93ms Beats96.97%of users with JavaScript
Memory 54.88MB Beats22.49%of users with JavaScript
## Notes 
I ran into both of the gotchas here, whiteboarding would have been a good idea. Great results though


