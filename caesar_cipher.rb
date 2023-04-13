def caesar_cipher(input, shift_amount)    
    lower = "abcdefghijklmnopqrstuvwxyz".split("")
    upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("")
    input = input.split("")

    output_indices = []
    output = []
    input.each do |letter|
        if lower.include?(letter)
            output << lower.rotate(shift_amount)[lower.find_index(letter)]
        elsif upper.include?(letter)
            output << upper.rotate(shift_amount)[upper.find_index(letter)]
        else
            output << letter
        end    
    end
    output = output.join
end

puts caesar_cipher("What a string!", 5)