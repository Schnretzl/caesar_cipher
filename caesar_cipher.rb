def caesar_cipher(input, shift_amount)    
    lower = "abcdefghijklmnopqrstuvwxyz".split("")
    upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("")
    # input = "Hello!"
    input = input.split("")
    # shift_amount = 3

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
    puts output
end

caesar_cipher("What a string!", 5)