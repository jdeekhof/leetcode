```
# @param {String} s
# @return {Boolean}
def is_palindrome(s)
lowercase_alpha_s = s.downcase.gsub(/[^a-z0-9]/i, '')
return true if lowercase_alpha_s.nil? || lowercase_alpha_s.length() < 2
(0...lowercase_alpha_s.length()/2).each do |i|
unless lowercase_alpha_s[i] == lowercase_alpha_s[-i-1]
return false
end
end
return true
end
```

## Results
### Runtime 75ms beats 82.64%of users with Ruby
### Memory 213.29MB beats 30.11%of users with Ruby
