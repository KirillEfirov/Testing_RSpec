def caesar_cipher word, shift
    arr = ('A'..'Z').to_a
    newWord = Array.new

    word = word.split("")

    word.each do |letter|
        index = arr.index(letter.capitalize)

        if ((index + shift) > (arr.length - 1))
            newWord.push(arr[shift - (arr.length - 1 - index) - 1])
        elsif letter == " "
            next
        else newWord.push(arr[index + shift])
        end
    end
    p newWord.join().capitalize

end