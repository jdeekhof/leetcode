# Solution 1 
```ruby
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
    return true if s == ''
    l = 0
    r = 0
    while l < s.length
        while r < t.length
            if s[l] == t[r]
                l += 1
                r += 1
            else r += 1
            end
        end
    return l == s.length
    end
end
```
## Results
Runtime 61ms Beats60.97%of users with Ruby
Memory 211.44MB Beats61.71%of users with Ruby
## Notes 
Linear time and constant space