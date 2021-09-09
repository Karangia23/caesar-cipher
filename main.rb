def convert_into_ceasar_cipher(sentence, length = 10)
    encryptedSentence = '' 
    sentence.each_char do |letter|
        if letter?(letter) 
            if letter.ord > 64 && letter.ord < 91 
                if letter.ord + length >= 91 
                    a = letter.ord + length - 90
                    letter = (64 + a).chr
                    encryptedSentence = encryptedSentence + letter 
                    
                elsif letter.ord + length <= 64
                    a = 65 - (letter.ord + length)
                    letter = (91 - a).chr
                    encryptedSentence = encryptedSentence + letter 
                else
                    letter = (letter.ord + length).chr
                    encryptedSentence = encryptedSentence + letter
                end
        
            elsif letter.ord > 96 and letter.ord < 123 
                if letter.ord + length > 123 
                    a = letter.ord + length - 122
                    letter = (96 + a).chr
                    encryptedSentence = encryptedSentence + letter
                elsif letter.ord + length < 96 
                    a = 97 - (letter.ord + length)
                    letter = (123 - a).chr
                    encryptedSentence = encryptedSentence + letter
                else
                    letter = (letter.ord + length).chr
                    encryptedSentence = encryptedSentence + letter
                end
            
            end
    
        else
            encryptedSentence = encryptedSentence + letter
        end
    end
    return encryptedSentence
end

def letter?(lookAhead)
    lookAhead.match?(/[[:alpha:]]/)
  end

def askForInput() 
    print "Your sentence: "
    userSentence = gets.chomp
    return userSentence
end

def showEndProduct(unchanged_sentence, changed_sentence) 
    puts "Your sentence: #{unchanged_sentence} \nModified sentence: #{changed_sentence}"
end

def main()
    sentence = askForInput()
    modified = convert_into_ceasar_cipher(sentence, 23)
    showEndProduct(sentence, modified)
end

main()