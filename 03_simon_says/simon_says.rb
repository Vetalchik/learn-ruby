def echo(s)
  s
end

def shout(s)
  s.upcase
end

def repeat(word, number = 2)
  result = word
  (number - 1).times do
    result += " " + word
  end
  result
end

def start_of_word(word, length = 0)
  word[0, length]
end

def first_word(s)
  s.split(" ")[0]
end

def titleize(s)
  little_words = ["and", "the", "over"]
  words = s.split(" ")
  words.each_with_index do |word, index|
    word.capitalize! unless (index != 0) && (little_words.include? word)
  end
  words.join(" ")
end