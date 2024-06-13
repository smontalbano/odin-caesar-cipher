def cypher(str, num)
    alpha_numeric = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 `~!@#$%^&*()_-=+[]{}\\|:;'\",.<>/?"
    alpha_numeric = alpha_numeric.split('')
    alpha_encrypt = alpha_numeric.rotate(num)
    arr = str.split('')
    arr.each_with_index do |value, index|
      alpha_index = alpha_numeric.find_index(value)
      str[index] = alpha_encrypt[alpha_index]
    end
    puts str
  end
  
puts "Enter message to encrypt: "
message = gets.chomp
puts "Enter key: "
key_number = gets.chomp.to_i
cypher(message, key_number)
  