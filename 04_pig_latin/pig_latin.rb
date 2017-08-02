def translate(sentence)
  words = sentence.split(" ")
  
  translated_sentence = ""
  words.each do |word|
    translated_sentence += translate_word(word) + " "
  end

  translated_sentence[0..translated_sentence.length-2]
end

def translate_word(word)
  vowels= ["a", "e", "i", "o", "u"]
  phenome = "qu"
  
  letters = word.split(//)

  letters_to_move = 0
  prev_letter = ""
  found_vowel = false
  while (not found_vowel)
    if vowels.include?(letters[letters_to_move]) && (prev_letter != "q")
      found_vowel = true
    else
      prev_letter = letters[letters_to_move]
      letters_to_move += 1
    end
  end

  move_letters_to_end(word, letters_to_move)+"ay"
end


def move_letters_to_end(word, letters_to_move)
  result = word
  
  if letters_to_move > 0
    result = word[letters_to_move..word.length-1] + word[0..letters_to_move-1]
  end

  result
end
