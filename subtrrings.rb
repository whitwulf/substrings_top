def substrings(string, dictionary) 
  cleaned = string.downcase.gsub(/[^a-z]/i, '')
  gen_substrings = generate_substrings(cleaned)
  dictionary_scan(dictionary, gen_substrings)
end

def generate_substrings(string)
  res = Array.new
  i = 0
  j = 0
  while i < string.length
    while j < string.length 
      res << string[i..j]
      j += 1
    end
    i += 1
    j = i 
  end
  res
end

def dictionary_scan(dictionary, substrings)
  res = Hash.new(0)
  i = 0
  j = 0
  while i < substrings.length
    while j < dictionary.length
      if substrings[i] == dictionary[j]
        res[dictionary[j]] += 1
      end
      j += 1
    end
    i += 1
    j = 0
  end
  res
end
     



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 puts substrings("Howdy partner, sit down! How's it going?", dictionary)