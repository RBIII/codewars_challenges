def decode_morse(morse_code)
  morse_code.strip.split('   ').map do |word|
    word.split(' ').map { |char| MORSE_CODE[char] }.join
  end
end