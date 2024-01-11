# Solution 1

```
# @param {Integer[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def game_of_life(board)
    m = board.length
    n = board.first.length
    board_copy = Marshal.load(Marshal.dump(board))
    board_copy.each do |row|
        row.unshift(0)
        row.append(0)
    end
    board_copy.unshift(Array.new(n+2,0))
    board_copy.append(Array.new(n+2,0))
    (1...m+1).each do |y| 
        (1...n+1).each do |x|
            previous_row = board_copy[y-1][x-1...x+2].sum
            current_row = board_copy[y][x-1...x+2].sum - board_copy[y][x]
            next_row = board_copy[y+1][x-1...x+2].sum
            square_sum = previous_row + current_row + next_row
            if board_copy[y][x] == 1
                if square_sum < 2 || square_sum > 3
                    board[y-1][x-1] = 0
                else 
                    board[y-1][x-1] = 1
                end
            elsif square_sum == 3
                board[y-1][x-1] = 1
            end
        end
    end
end
```
## Results
### Runtime 55ms beats 96.88%of users with Ruby
### Memory 211.74MB beats 9.38%of users with Ruby

## Notes 
I am extremely pleased with this solution despite the fact it uses a ton of memory. I had a good bit of trouble with adding the buffer of 0's around the copy because Ruby has no method to deep clone natively. Marshalling works though.
