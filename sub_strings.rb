words = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    subs = Hash.new

    dictionary.each do |word|
        if string.downcase.include?(word)
            subs[word] = string.downcase.scan(word).count
        end
    end
    puts subs
end

substrings("Howdy partner, sit down! How's it going?", words)