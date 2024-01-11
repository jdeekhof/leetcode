# Solution 1

```
# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    max_index = height.length
    return height.min if max_index == 2
    left = 0 
    right = max_index - 1
    max_volume = 0
    while right > left
        while height[left] < height[right]
            h = [height[left], height[right]].min
            w = right - left
            volume = h * w 
            if volume > max_volume
                max_volume = volume
            end
            left +=1
        end
        h = [height[left], height[right]].min
        w = right - left
        volume = h * w 
        if volume > max_volume
            max_volume = volume
        end
        right -=1
    end
    return max_volume
end
```

## Results
### Runtime134ms beats 52.68%of users with Ruby
### Memory 218.05MB beats29.86%of users with Ruby

## Notes
Another sliding window/2 pointer solution, I had some trouble with where to place calculating the volume. There is definitely a better way. 

# Solution 2