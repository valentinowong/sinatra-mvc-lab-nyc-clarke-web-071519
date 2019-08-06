class PigLatinizer

    def piglatinize(string)
        consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
        vowels = ["a", "e", "i", "o", "u", "y"]
        array = string.split(" ")
        new_array = []
        array.each do |word|
            new_string = ""
            if vowels.include?(word.downcase[0])
                #What to do if the first letter is a vowel
                new_string = word + "way"
            elsif consonants.include?(word.downcase[0])
                # What to do if the first letter is a consonant
                new_string = word
                until vowels.include?(new_string[0])
                    first_letter = new_string.slice!(0, 1)
                    new_string += first_letter
                end
                new_string += "ay"
            end
            new_array << new_string
        end
        new_array.join(" ")
    end

end
