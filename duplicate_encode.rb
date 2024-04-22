def duplicate_encode(word)
    letter_count = {}
    word_arr = word.downcase.chars

    word_arr.each do |letter|
        letter_count[letter].nil? ? letter_count[letter] = 1 : letter_count[letter] += 1
    end

    word_arr.map { |letter| letter_count[letter] > 1 ? letter = ')' : letter = '(' }.join('')
end