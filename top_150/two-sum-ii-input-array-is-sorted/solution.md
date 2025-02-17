# Solution 1 
```javascript
/**
 * @param {number[]} numbers
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(numbers, target) {
    const numLength = numbers.length
    const numberSet = new Set(numbers)

    for(uniqNumber of numberSet){
        let i = numbers.indexOf(uniqNumber)
        let j = i + 1

        while(j <= numLength){
            if(numbers[i]+numbers[j] === target){
                return([i+1,j+1])
            }
            else{
                j += 1
            }
        }
    }
};
```
```typescript
function twoSum(numbers: number[], target: number): number[] {
    const numLength: number = numbers.length;
    const numberSet: Set<number> = new Set(numbers);

    for (const uniqNumber of numberSet) {
        const i: number = numbers.indexOf(uniqNumber);
        let j: number = i + 1;

        while (j < numLength) { 
            if (numbers[i] + numbers[j] === target) {
                return [i + 1, j + 1]; 
            }
            j += 1;
        }
    }
}

```
```javascript
/**
 * @param {number[]} numbers
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(numbers, target) {
    const countMap = new Map();
    numbersDetriped = numbers.filter(num => {
        const count = countMap.get(num) || 0;
        if (count < 2) {
            countMap.set(num, count + 1);
            return true;
        }
        return false;
    })
    let i = 0 
    let j = 1
    const numLength = numbersDetriped.length

    while(i < numLength){
        while(j <= numLength){
            if(numbersDetriped[i]+numbersDetriped[j] === target){
                let firstResult = numbers.indexOf(numbersDetriped[i])+1
                if(numbersDetriped[i] === numbersDetriped[j]){
                    return([firstResult, firstResult+1])
                }
                else{
                    return([firstResult,numbers.indexOf(numbersDetriped[j])+1])
                }
            }
            else{
                j += 1
            }
        }
        i += 1
        j = i +1
    }
}
```
