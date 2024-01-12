# Solution 1

```
# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    available_letters = {}
    magazine.split('').each{ |letter| available_letters[letter] = (available_letters[letter] || 0) + 1 }
    ransom_note.split('').each do |letter| 
        if available_letters[letter].nil? || available_letters[letter] == 0
            return false
        else available_letters[letter] -= 1
        end
    end
    return true
end
```

## Results
### Runtime 141ms beats 64.84%of users with Ruby
### Memory 217.01MB beats14.65%of users with Ruby

## Notes
I like the readability of this code and its reasonably fast. I think I can speed it up though.

# Solution 2

```
# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    available_letters = magazine.chars.tally
    letters_used = ransom_note.chars.tally
    Set.new(ransom_note.chars).each do |letter|
        if available_letters[letter].nil? || letters_used[letter] > available_letters[letter]
            return false 
        end
    end
    return true
end
```

## Results
### Runtime 109ms beats85.71%of users with Ruby
### Memory 217.36MB beats10.26%of users with Ruby

## Notes
The tally feature of Ruby is so great, I really gotta remember to use it more often. I'm pleased with this level of performance.