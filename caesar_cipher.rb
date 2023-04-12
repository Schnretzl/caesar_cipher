def caesar_cipher(input, shift_amount)
    string.rotate(shift_amount)
end

lower = "abcdefghijklmnopqrstuvwxyz".split("")
upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("")
input = "Hello"
p input.split("")