# Solution 1 
```
class Solution:
    def jump(self, nums: List[int]) -> int:
        finish = len(nums) - 1
        if finish == 0: return 0
            steps = 0
            i = 0
            while i < finish:
                max_jump = i + nums[i]
                max_jump_index = max_jump
                steps += 1
                if max_jump >= finish: break
                    for j in range(i, max_jump+1):
                        possible = nums[j] + j
                        if possible > max_jump:
                            max_jump = possible
                            max_jump_index = j
            i = max_jump_index
        return steps
```

## Results
Runtime 98ms Beats93.34%of users with Python3
Memory 17.83MB Beats58.08%of users with Python3

## Notes
Navigating the syntax took a while ands I could not for the life of me keep track of my vairables. Not my best performance