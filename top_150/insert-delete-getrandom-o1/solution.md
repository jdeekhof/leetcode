# Solution 1 
```ruby
class RandomizedSet
    def initialize()
        @h = {}
    end
    

=begin
    :type val: Integer
    :rtype: Boolean
=end
    def insert(val)
        if @h[val]
            return false
        else
            @h[val] = true
            @h[val]
        end
    end


=begin
    :type val: Integer
    :rtype: Boolean
=end
    def remove(val)
        @h.delete(val) || false
    end


=begin
    :rtype: Integer
=end
    def get_random()
        @h.keys()[rand(0...@h.keys().length)]
    end


end

# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet.new()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.get_random()
```
## Results 
Runtime 406ms Beats39.03%of users with Ruby
Memory 294.42MB Beats7.32%of users with Ruby
## Notes 
The o1 time was a giveaway that this should be a hash, I think I could speed up the time complexity by coming up with a more elegant solution for the getRandom() function.
