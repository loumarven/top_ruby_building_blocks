def substrings(words, dictionary)
  results = Hash.new(0)
  words.downcase!

  dictionary.each do |substring|
    matches = words.scan(substring).count
    results[substring] = matches if matches > 0
  end

  results
end


# sammple usage
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
