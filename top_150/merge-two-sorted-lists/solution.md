# Solution 1  
```typescript
/**
 * Definition for singly-linked list.
 * class ListNode {
 *     val: number
 *     next: ListNode | null
 *     constructor(val?: number, next?: ListNode | null) {
 *         this.val = (val===undefined ? 0 : val)
 *         this.next = (next===undefined ? null : next)
 *     }
 * }
 */

function mergeTwoLists(list1: ListNode | null, list2: ListNode | null): ListNode | null {
    const result = new ListNode(0)
    let pointer = result

    while(list1 !== null && list2 !== null){
        if(list1.val <= list2.val){
            pointer.next = list1
            list1 = list1.next

        } else {
            pointer.next = list2
            list2 = list2.next
        }
        pointer = pointer.next
    }
    pointer.next = list1 || list2
    return result.next
};
```
## Results 
Runtime 0ms Beats100.00%
Memory 52.88MB Beats47.06%
## Notes 
