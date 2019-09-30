def caesar_cipher(string, shift)
    new_array = []
    characters = string.split("")
    characters = characters.map(&:ord)
#If the character code is in range 65-90,Add the shift factor
    characters.each do |character|
        if (65..90) === character
            character = character + shift
    #If the new code > 90
            if character > 90
        #Subtract the new code from 90 and add this number to 65
                character = character-26
                new_array.push(character)
    #Else push charcode to array
            else new_array.push(character)
            end
        elsif (97..122) === character
            character = character+shift
            if character > 122
                character = character-26
                new_array.push(character)
            else new_array.push(character)
            end
        else new_array.push(character)
        end
    end
    encode = new_array.map(&:chr)
    encode = encode.join
end

puts caesar_cipher("The quick brown fox jumped over the lazy dogs.", 2)
