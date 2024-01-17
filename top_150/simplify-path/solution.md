# Solution 1

```
# @param {String} path
# @return {String}
def simplify_path(path)
    path_stack = []
    path.split('/').each do |path_item|
        if path_item == '..'
            path_stack.pop
        elsif path_item != '.' && path_item != ''
            path_stack.append(path_item)
        end
    end
    "/"+path_stack.join('/')
end
```

## Results 
### Runtime 59ms beats 86.26%of users with Ruby
### Memory 211.64MB beats 24.43%of users with Ruby


