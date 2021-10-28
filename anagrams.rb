def permutation_anagram?(word_1, word_2)
    # Using permutations, this has worst time complexity of O(n!)
    first_word_anagrams = word_1.chars.permutation.to_a
    first_word_anagrams.include?(word_2.chars)
end

def find_anagram?(word_1, word_2)
    # O(n^2) time complexity -- looping over each char of word_1 and then using find_index (through word_2)
    word_2_letters = word_2.chars.to_a
    word_1.chars.each do |char|
        return false if !word_2_letters.include?(char)
        word_2_letters.delete_at(word_2_letters.find_index(char))
    end
    true
end

def sort_anagram?(word_1, word_2)
    # Using built-in Array#sort method for O(n^2) time complexity
    word_1.chars.sort == word_2.chars.sort
end

def hashes_anagram?(word_1, word_2)
    # Use two hashes to check for anagram to achieve O(n) time complexity
    first_hash = word_1.chars.each_with_object(Hash.new(0)) { |ltr, h| h[ltr] += 1 }
    second_hash = word_2.chars.each_with_object(Hash.new(0)) { |ltr, h| h[ltr] += 1 }
    first_hash == second_hash
end

def hash_anagram?(word_1, word_2)
    # Still a O(n) time complexity, but only storing one hash so as to reduce memory
    hash = word_1.chars.each_with_object(Hash.new(0)) { |ltr, h| h[ltr] += 1 }
    word_2.chars.each do |char|
        hash[char] -= 1
    end
    hash.values.all? { |val| val == 0}
end