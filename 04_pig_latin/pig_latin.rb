def translate(s)
  volwels = ['a', 'e', 'i', 'o', 'u', 'y']
  words = s.split(" ")
  words.map! { |word|
    #check if word begins with volwel
    if volwels.include? word[0].downcase
      word + 'ay'
    else
      #get first volwel index
      volwel_index = word.index(/[#{volwels.join()}]/)
      #check if it is not 'qu'
      volwel_index += 1 if word[(volwel_index - 1)..volwel_index] == 'qu'
      
      word[volwel_index..(word.length - 1)] + word[0...volwel_index] + 'ay'
    end
  }
  words.join(" ")
end