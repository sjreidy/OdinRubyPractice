def substrings(string, dictionary)
    #Create a hash to count word occurances
    value_array = Array.new(dictionary.length, 0)
    zipped = dictionary.zip(value_array)
    counting_hash = Hash[zipped]
    
    string_array = string.chars
    substring_array = []

    #Create an array of each substring in string
    string_array.each do |letter|
        i = string_array.index(letter)
        substring_array << letter
        working_word = string_array[i]
        while i < string_array.length - 1
            working_word = working_word.to_s + string_array[i+1].to_s
            substring_array << working_word
            i = i + 1
        end
    end

    #Count Occurances
    substring_array.each do |substring|
        dictionary.each do |word|
            if substring.casecmp?(word)
                  counting_hash[word] += 1
            end
        end
    end
    puts counting_hash
end
substrings("Bitch bitch bitch2", ["bitch", "bitch2", "bitch3"])

