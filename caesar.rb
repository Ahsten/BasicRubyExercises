# Take in a string and shift it by a chosen factor
# Capital Letters 65-90
# Lowercase Letters 97-122

def caesar_cipher(string, shift_factor)
    result = ""

    string.each_char do |char|
        if char.ord >= 65 && char.ord <= 90
           shifted_char = (((char.ord - 65) +  shift_factor) % 26) + 65
           result += shifted_char.chr
        elsif char.ord >= 97 && char.ord <= 122
            shifted_char = (((char.ord - 97) +  shift_factor) % 26) + 97
            result += shifted_char.chr
        else
            result += char
        end
    end
    puts result
end

caesar_cipher("What a string!", 5)