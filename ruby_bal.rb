def valid_brac?(str)
  stack = []
  symbols = { '{' => '}', '[' => ']', '(' => ')' }
  str.each_char do |x|
    stack << x if symbols.key?(x)
    return false if symbols.key(x) && symbols.key(x) != stack.pop
  end
  stack.empty?
end

puts valid_brac?('[ ]')                  # returns true
puts valid_brac?('[  ')                  # returns false
puts valid_brac?('[ ( text ) {} ]')      # returns true
puts valid_brac?('[ ( text { ) } ]')     # returns false
