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

# Test case 1: Encrypting a simple message with a positive shift
puts caesar_cipher("hello world", 3)  # "khoor zruog"

# Test case 2: Encrypting a message with a negative shift
puts caesar_cipher("khoor zruog", -3)  # "hello world"

# Test case 3: Encrypting a message with mixed case and punctuation
puts caesar_cipher("Hello, World!", 5)  # "Mjqqt, Btwqi!"

# Test case 4: Encrypting a message with a shift of 26 (no change)
puts caesar_cipher("hello world", 26)  # "hello world"

# Test case 5: Encrypting an empty string
puts caesar_cipher("", 3)  # ""

# Test case 6: Encrypting a message with a large shift
puts caesar_cipher("hello world", 50)  # "dahhk sknhz"

# Test case 7: Encrypting a message with a shift of 0 (no change)
puts caesar_cipher("hello world", 0)  # "hello world"
