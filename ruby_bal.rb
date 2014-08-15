def valid_brac?(str)
  stack = []
  count=[]
  y=0
  symbols = { '{' => '}', '[' => ']', '(' => ')' }
  str.each_char do |x|
    stack << x if symbols.key?(x)
    count << x if symbols.key?(x)
    if symbols.key(x) && symbols.key(x) != stack.pop
      y=0
      puts 0
    else
      y=1
    end
  end
  if y == 1
      puts 1
      puts count.length
    end
end


valid_brac?("(hello [world]) (!)")





