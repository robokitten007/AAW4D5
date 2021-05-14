def first_anagram?(str_1, str_2)
    str_1.chars.permutation(str_1.length).to_a.include?(str_2.chars)
end

# puts first_anagram?("hello", "lelho")

def second_anagram?(str_1, str_2)
    anagram = true
    str_1.each_char do |char|
        if !str_2.include?(char)
            anagram = false
        else
            index = str_2.index(char)
            str_2.slice!(index)
        end
    end
    str_2.empty? && anagram == true
end

# puts second_anagram?("hello", "lelho")

def third_anagram?(str_1, str_2)
    str_1.chars.sort == str_2.chars.sort
end

# puts third_anagram?("hello", "lelho")
# puts third_anagram?("hello", "lehao")

def fourth_anagram?(str_1, str_2)
    hash = Hash.new(0)
    hash_2 = Hash.new(0)

    str_1.each_char do |char|
        hash[char] += 1
    end

    str_2.each_char do |char|
        hash_2[char] += 1
    end

    hash == hash_2
end

puts fourth_anagram?("hello", "lelho")
puts fourth_anagram?("hello", "lehao")