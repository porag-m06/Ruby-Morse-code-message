def morse_to_char(morse_char)
  morse_to_english = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }

  morse_to_english[morse_char]
end

def morse_to_word(morse_word)
  morse_chars = morse_word.split(' ')
  english_word = ''

  morse_chars.each do |morse_char|
    english_char = morse_to_char(morse_char)
    english_word += english_char if english_char
  end

  english_word
end

def morse_to_sentence(morse_code)
  morse_words = morse_code.split('   ')
  english_sentence = ''

  morse_words.each do |morse_word|
    english_word = morse_to_word(morse_word)
    english_sentence += "#{english_word} "
  end

  english_sentence.strip
end

# Decoding message
input_morse = ' .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
english_sentence = morse_to_sentence(input_morse)
puts english_sentence
