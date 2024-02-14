# Solution 1
```TypeScript
function intToRoman(num: number): string {
    let translations = new Map(
        [[1000, 'M'],
        [900, 'CM'],
        [500, 'D'],
        [400, 'CD'],
        [100, 'C'],
        [90, 'XC'],
        [50, 'L'],
        [40, 'XL'],
        [10, 'X'],
        [9, 'IX'],
        [5, 'V'],
        [4, 'IV'],
        [1, 'I']]
    )
    let result_stack = []
    for (let item of translations){
        if (num%item[0]<num){
            let value_times = Math.floor(num/item[0])
            num -= value_times*item[0]
            result_stack.push(item[1].repeat(value_times))
        }  
    }
    return result_stack.join('')
};
```
## Results 
Runtime 125ms Beats37.60%of users with TypeScript
Memory 59.06MB Beats8.75%of users with TypeScript

## Notes 
I feel like division is whats slowing this down the most, maybe I can consolidate the modulo and the divison into one.


# Solution 2
```TypeScript
function intToRoman(num: number): string {
    let translations = new Map(
        [[1000, 'M'],
        [900, 'CM'],
        [500, 'D'],
        [400, 'CD'],
        [100, 'C'],
        [90, 'XC'],
        [50, 'L'],
        [40, 'XL'],
        [10, 'X'],
        [9, 'IX'],
        [5, 'V'],
        [4, 'IV'],
        [1, 'I']]
    )
    let result_stack = []
    for (let item of translations){
        let value_times = num/item[0]
        if (value_times >= 1){
            value_times = Math.floor(value_times)
            num -= value_times*item[0]
            result_stack.push(item[1].repeat(value_times))
        }  
    }
    return result_stack.join('')
};
```
## Results
Runtime 113ms
Beats 68.16%of users with TypeScript
Memory 59.46MB Beats5.11%of users with TypeScript
