def ceasar_cipher(str, shift)
    encrypted_str = ""
    str.each_char do |char|
        ascii_code = char.ord
        if char.match?(/[a-zA-z]/)
            shifted_code = ascii_code + shift
            if char.match?(/[a-z]/) && shifted_code > 'z'.ord || char.match?(/[A-Z]/) && shifted_code > 'Z'.ord
                shifted_code -= 26
            end 
            encrypted_str += shifted_code.chr
        else
            encrypted_str += char
        end
    end
    encrypted_str
end

puts ceasar_cipher("What a string!",5)