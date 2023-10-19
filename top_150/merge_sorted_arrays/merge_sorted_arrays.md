88. Merge Sorted Array

#Description
You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

Merge nums1 and nums2 into a single array sorted in non-decreasing order.

The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.


#Solution
```
 @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    left_pointer = m -1 
    right_pointer = n -1 
    array_pointer = m + n -1

    while array_pointer >= 0 
        if left_pointer < 0
            nums1[0...array_pointer+1] = nums2[0...array_pointer+1]
            array_pointer=-1
        elsif right_pointer < 0
            array_pointer=-1  
        elsif nums1[left_pointer] <= nums2[right_pointer]
            nums1[array_pointer] = nums2[right_pointer]
            array_pointer-=1
            right_pointer-=1
        else
            nums1[array_pointer] = nums1[left_pointer]
            array_pointer-=1
            left_pointer-=1
        end
    end 
end
```

#Results
14 attempts
Runtime
54ms
Beats 91.32%of users with Ruby
Memory
211.04MB
Beats 52.07%of users with Ruby

#Notes
I think this one took a little longer than I would like. The underlying algorithm is pretty good though since its basically the engine of merge sort. I realized after that I did not need the initial guard clause since its accounted for inside of the while loop. I improved my original results to above. 
