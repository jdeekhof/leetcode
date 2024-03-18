# Solution 1  
```ruby
# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    haystack =~ /#{needle}/ || -1
end
```

## Results
Runtime 51ms Beats90.40%of users with Ruby
Memory 211.26MB Beats61.62%of users with Ruby

