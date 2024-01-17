# Solution 1  

```
# @param {ListNode} head
# @param {Integer} left
# @param {Integer} right
# @return {ListNode}
def reverse_between(head, left, right)
    i = 1
    result = []
    while head
        result.append(head.val)
        if i == right
            result[left-1...right] = result[left-1...right].reverse
        end
        head = head.next
        i+=1
    end
    result
end
```

## Results
### Runtime 51ms Beats86.49%of users with Ruby
### Memory 211.40MB Beats51.35%of users with Ruby

## Notes 
Developed this algorithm rather quickly, I feel more comfortable navigating a linked list now. Took me a bit that the left position doesn't matter at all if I just used an array.