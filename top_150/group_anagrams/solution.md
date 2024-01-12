# Solution 1

```
# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    return [strs] if strs.length < 2
    strs_character_counts = {}
    grouped_strs = []
    strs.each_with_index do |str, index|
        characters_tally = str.chars.tally
        if strs_character_counts[characters_tally].nil?
            strs_character_counts[characters_tally] = grouped_strs.length
            grouped_strs.append([strs[index]])
        else 
            grouped_strs[strs_character_counts[characters_tally]].append(strs[index])
        end
    end
    grouped_strs
end
```

## Results
### Runtime 162ms beats 52.34%of users with Ruby
### Memory 224.51MB beats 9.64%of users with Ruby

## Notes
I was on the cusp of this solution for a while. I just needed to accurately save the index of the grouped strs rather than its original index. It's reasonably fast, but I'm not exactly sure how I would improve it at this point. 