# Solution 1  
```javascript
/**
 * @param {string} pattern
 * @param {string} s
 * @return {boolean}
 */
var wordPattern = function(pattern, s) {
    const s_array = s.split(" ")
    const pattern_array = pattern.split("")
    const max_len = pattern_array.length
    if(s_array.length !== max_len){ return false }
    let mappings = {}
    for(i = 0; i < max_len; i++){
        if(!!mappings[pattern_array[i]]){
            if(mappings[pattern_array[i]] !== s_array[i]){ return false }
        }
        else{
            if(Object.values(mappings).includes(s_array[i])) { return false }
            mappings[pattern_array[i]] = s_array[i]
        }
    }
    return true
}
```
## Results 
Runtime 52ms Beats 52.26%
Memory 48.47MB Beats 87.16%
## Notes 
