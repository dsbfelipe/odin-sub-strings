dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def remove_special_caracters(string)
  string.gsub(/[^\w\s]/, ' ')
end

def substrings(string, dictionary)
  words_array = remove_special_caracters(string).downcase.split(" ")
  result = Hash.new(0)

  words_array.each do |word|
    dictionary.each do |reference_word|
      if word.include?(reference_word)
        result[reference_word] += 1    
      end
    end
  end
  result
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
