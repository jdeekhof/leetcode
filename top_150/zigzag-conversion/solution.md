# Solution 1  
```ruby
    # @param {String} s
    # @param {Integer} num_rows
    # @return {String}
    def convert(s, num_rows)
        return s if num_rows == 1
        result = Array.new(num_rows) { "" }
        (0..s.length-1).each do |index|
            row_destination = index % ((num_rows - 1) * 2)
            if row_destination >= num_rows
                row_destination = ((num_rows - 1) * 2) - row_destination
            end
            result[row_destination] << s[index]
        end
        result.join('')
    end
```
## Results 
Runtime 64ms Beats100.00%of users with Ruby
Memory 211.55MB Beats85.44%of users with Ruby

## Notes 
This took me a long time to figure out but I am very pleased with my solution since it's my first 100% on runtime. 