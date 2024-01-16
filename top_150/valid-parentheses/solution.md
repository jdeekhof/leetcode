# Solution 1  
```
# @param {String} s
# @return {Boolean}
def is_valid(s)
    s = s.chars
    priority_stack = []
    pairs = { '(' => ')', '[' => ']', '{' => '}' }
    (0...s.length+1).each do |i|
        if pairs.keys.include?  s[i]
           priority_stack.append(s[i])
        else pairs.values.include?  s[i]
            if pairs[priority_stack.last] == s[i]
                priority_stack.pop
            else
                return false
            end
        end
    end
    priority_stack.length == 0
end
```

## Results 
### Runtime 56ms beats 84.25%of users with Ruby
### Memory 211.78MB beats 18.35%of users with Ruby

## Notes 
I used a lot of memory but the speed is great. I could improve the space complexity, but I prefer the readability.