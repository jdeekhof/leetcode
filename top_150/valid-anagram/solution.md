# Solution 1  

```javascript
/**
 * @param {string} s
 * @param {string} t
 * @return {boolean}
 */
var isAnagram = function(s, t) {
    const sSize = s.length
    s = s.split('').sort()
    t = t.split('').sort()
    for(let i = 0; i <= sSize; i++){
        if(s[i] !== t[i]){
            return false
        }
    }
    return true
};
```

## Results 
Runtime 32ms Beats16.56%
Memory  54.86MB Beats13.93%

## Notes 
Simple solution but slow. I could try spinning each of them out to maps and comparing the maps

# Solution 2
```javascript
/**
 * @param {string} s
 * @param {string} t
 * @return {boolean}
 */
var isAnagram = function(s, t) {
    s = s.split('')
    t = t.split('')
    if (s.length !== t.length){
      return false
    }
    const charCounts = {};
    for (const char of s) {
      charCounts[char] = (charCounts[char] || 0) + 1;
    }
    for (let i = 0; i < t.length; i++){
      if(charCounts[t[i]] >= 1){
        charCounts[t[i]] -= 1
      }
      else{
        return false
      }
    }
    return true
  };
```

## Results
Runtime 9ms Beats89.20%
Memory 54.11MB  Beats33.83%

## Notes
