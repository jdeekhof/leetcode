# Solution 1  
```
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    result = []
    carry = 0
    while l1 || l2
        sum = 0

        if l1
            sum += l1.val
            l1=l1.next
        end

        if l2
            sum+=l2.val
            l2=l2.next
        end

        sum += carry
        carry = sum / 10
        sum %= 10

        result.append sum
    end

    if carry != 0
        result.append carry
    end

    result
end
```

## Results 
### Runtime 75ms Beats86.65%of users with Ruby
### Memory 211.86MB Beats21.76%of users with Ruby 


## Notes 
I struggled on this one, I didnt really read the directions and thought it was easier than it really was. I need some more work on linked lists.