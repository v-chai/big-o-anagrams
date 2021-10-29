# big-o-anagrams
App Academy Open coding challenge from Big O lesson: 

> Our goal today is to write a method that determines if two given words are anagrams. This means that the letters in one word can be rearranged to form the other word. Assume that there is no whitespace or punctuation in the given strings. For example:
```
anagram?("gizmo", "sally")    #=> false
anagram?("elvis", "lives")    #=> true
```

> Phase I:
> Write a method `#permutation_anagram?` that will generate and store all the possible anagrams of the first string. Check if the second string is one of these.

> Phase II:
> Write a method `#find_anagram?` that iterates over the first string. For each letter in the first string, find the index of that letter in the second string (hint: use Array#find_index) and delete at that index. The two strings are anagrams if an index is found for every letter and the second string is empty at the end of the iteration.

> Phase III:
> Write a method `#sort_anagram?` that solves the problem by sorting both strings alphabetically. The strings are then anagrams if and only if the sorted versions are the identical.

>Phase IV:
>Write one more method `hashes_anagram?`. This time, use two Hashes to store the number of times each letter appears in both words. Compare the resulting hashes.
> What is the time complexity?

>Bonus: Do it with only one hash (`hash_anagram?`)
