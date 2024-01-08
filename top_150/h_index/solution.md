# First Solution
```
/**
 * @param {number[]} citations
 * @return {number}
 */
var hIndex = function(citations) {
    if(citations.length === 1 && citations[0]===0){
        return 0
    }
    let sorted = citations.sort(function(a,b){return b-a})
    for(i = 0; i < sorted.length; i++){
        if(i >= sorted[i]){
            return i
        }
    }
    return i
};
```

## Results
### Runtime 49ms beats 83.43%of users with JavaScript
### Memory 41.44MB beats 95.37%of users with JavaScript


## Notes
I am pretty pleased with this solution. I had some trouble understanding the definition, but once I got it, the alogrithm came pretty quickly. One thing that helped a lot was logging each iteration and looking for the edge case that would return the right number. One thing that tripped me up was the `.sort().reverse()`. It was sorting them as strings rather than integers. 
