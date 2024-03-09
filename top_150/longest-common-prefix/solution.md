# Solution 1  
```javascript
/**
 * @param {string[]} strs
 * @return {string}
 */
var longestCommonPrefix = function(strs) {
    let prefix = []
    for (let i = 0; i < strs[0].length; i++){
        if (strs.every((str) => str[i] === strs[0][i])){
            prefix.push(strs[0][i])
        }
        else{ break }
    }
    return(prefix.join(''))
};
```
## Results 
Runtime 54ms Beats68.78%of users with JavaScript
Memory 49.41MB Beats27.73%of users with JavaScript


const x = 2;
let y = 4; 
function update(arg) 
    { return Math.random() + 2 * arg; } 
y = 2; 
?; 
const result = update(x);


