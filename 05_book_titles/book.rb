class Book
  attr_accessor :title

  def title
    words = @title.split(" ")
    littleWords = ["a", "the", "of", "an", "in", "and"]

    result = ""
    words[0].capitalize!
    words.each do |word|
      if (not littleWords.include? word)
        word.capitalize!
      end

      result += word + " "
    end

    return result[0..result.length-2]
  end
end
