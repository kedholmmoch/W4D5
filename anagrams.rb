
def anagram?(word_1, word_2)
  letters = word_1.split("")
  possibles = letters.permutation.to_a

  possibles.include?(word_2.split(""))
end

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("abcdefghij", "ihgfedcbaj")    #=> true


def sec_anagram?(word1, word2)
  let_1 = word1.split("")
  let_2 = word2.split("")
  let_1.each do |letter|
    if let_2.include?(letter)
      index = let_2.index(letter)
      let_2.delete_at(index)
    else
      return false
    end
  end
  
  let_2.empty?

end

# p sec_anagram?("abcd", "abc")    #=> false
# p sec_anagram?("abcdefghijklmnopqrs", "jihgfedcbaklmnopqrs")    #=> true

def third_ana(str1, str2)
  sorted1 = str1.chars.sort
  sorted2 = str2.chars.sort
  sorted1 == sorted2
end

# p third_ana("elvis", "lives")
# p third_ana("hello", "world")
# p third_ana("i", "hello")

def fourth_anagram(word1, word2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  word1.each_char { |char| hash1[char] += 1 }
  word2.each_char { |char| hash2[char] += 1 }

  hash1 == hash2
end

# p fourth_anagram("elvis", "lives")
# p fourth_anagram("hello", "world")
# p fourth_anagram("i", "hello")

def bonus_ana(word1, word2)
  hash = Hash.new(0)

  word1.each_char { |char| hash[char] += 1 }
  word2.each_char { |char| hash[char] -= 1 }

  hash.values.all? { |count| count == 0 }
end

p bonus_ana("elvis", "lives")
p bonus_ana("hello", "world")
p bonus_ana("i", "hello")