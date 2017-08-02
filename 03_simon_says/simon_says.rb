def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times=2)
  result = "#{word} " * times
  result[0..result.length-2]
end

def start_of_word(word, letter_amount)
  word[0,letter_amount]
end

def first_word(sentence)
  words = sentence.split(" ")
  words[0]
end

def titleize(title)
  words = title.split(" ")
  little_words = ["the", "and", "over", "or", "with"]

  new_title = ""
  words[0].capitalize!
  words.each do |word|
    if (not little_words.include? word)
      word.capitalize!
    end

    new_title += word + " "
  end

  new_title[0..new_title.length-2]
end
