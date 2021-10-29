# 足すか掛けるか

# 2.文字列の出力 (paizaランク D 相当)
number= gets.to_i
number.times do
  string= gets.to_s
  puts string
end

# 3.文字列の分割 (paizaランク D 相当)
line = gets.split(' ')
puts line

# 4.整数の足し算 (paizaランク D 相当)
number = gets.split(' ').map{|n|n.to_i}
puts number.sum

# FINAL.足すか掛けるか (paizaランク C 相当)
number = gets.to_i
s = 0
number.times do
  number = gets.split(' ').map{|n|n.to_i}
  s += number.sum
end
puts s