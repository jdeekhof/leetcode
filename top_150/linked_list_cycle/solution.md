# Solution 1

```
# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    linked_list_hash = {}
    temp = head&.next
    linked_list_hash[head] = true
    while temp
        temp = temp&.next
        if linked_list_hash[temp].nil?
            linked_list_hash[temp] = true
        else return true
        end
    end
    return false
end
```

## Results
### Runtime 76ms beats58.85%of users with Ruby
### Memory 214.36MB beats19.91%of users with Ruby

## Notes
I like the hash here for speed. I think I can speed this up a little by changing where the assignment for it happens

# Solution 2

```
def hasCycle(head)
    linked_list_hash = {}
    temp = head
    while temp
        if linked_list_hash[temp].nil?
                linked_list_hash[temp] = true
            else return true
        end
        temp = temp.next
    end
    return false
end
```

## Results
### Runtime 69ms beats 75.66%of users with Ruby
### Memory 214.97MB beats 14.16%of users with Ruby
