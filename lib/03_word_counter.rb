def word_counter(text,dictionnary)
	counter={}
	for i in 0..dictionnary.size
		counter=counter.merge(individual_counter(dictionnary[i],text))
		counter = counter
	end
	return counter=counter.reject{|k,v| k==nil || v==0}
end

def individual_counter (word,phrase)
	{word => phrase.split.count{|item| item.downcase.include?(word.to_s)}}
end

corpus=File.read("txt.txt")
dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

dictionnary2 = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

puts word_counter("Howdy partner, sit down! How's it going?",dictionnary2)
