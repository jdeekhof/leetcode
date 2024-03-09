# Solution 1  
```python3
    ans=0
        for i in range(1,len(prices)):
            if prices[i]>prices[i-1] :
                ans+=prices[i]-prices[i-1]
        return ans
```
## Results 
Runtime 64ms Beats22.73%of users with Python3
Memory 17.91MB Beats31.25%of users with Python3
## Notes 
This was a tough one, once I figured out that holding stock was not ever optimal, it became a lot easier. 
