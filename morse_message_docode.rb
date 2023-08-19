def decode_char(morse_code)
    MORSE_CODE[morse_code]
end
  
def decode_word(morse_code)
    morse_code.split.map { |char| MORSE_CODE[char] }.join
end
  
def decode(message)
    message.split("   ").map do |word|
    word.split.map { |char| MORSE_CODE[char] }.join
    end.join(" ")
end

puts decode(" .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")