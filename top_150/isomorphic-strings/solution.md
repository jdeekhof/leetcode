# Solution 1  

```typescript
function isIsomorphic(s: string, t: string): boolean {
    const s_len = s.length
    var mappings: { [id: string] : string; } = {};
    for(let i = 0; i < s_len; i++){
        if(s[i] in mappings){
            if(t[i] !== mappings[s[i]]){
                return false
            }
        }
        else{
            if(Object.values(mappings).includes(t[i])){
                return false
            }
            mappings[s[i]] = t[i]
        }
    }
    return true
};
```

## Results
Runtime 49ms Beats99.60%
Memory 52.82MB Beats63.61%