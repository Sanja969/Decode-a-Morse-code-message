def decode_char(code)
  dictionary = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1',
    '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
    '---..' => '8', '----.' => '9', '-----' => '0' }
  dictionary[code]
end

def decode_word(code)
  word = ''
  chars = code.split(' ')
  chars.each { |c| word += decode_char(c)
  }
  word
end

def decode(code)
  message = ''
  words = code.split('   ')
  words.each { |w| message += "#{decode_word(w)} "
  }
  message
end

puts decode ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
