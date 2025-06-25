def substrings(word, dictionary)
  word = word.downcase
  word = word.split(" ")
  times = dictionary.reduce(Hash.new(0)) do |result, vote|
        word.each do |item|
          if item.include?(vote)
            result[vote] += 1
          end
        end
         result 
      end
  return times
end


