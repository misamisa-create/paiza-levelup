# 指定範囲だけ大文字

# 文字列の分割 (paizaランク D 相当)
N = gets.chomp.split(" ")
puts N

# 整数の足し算 (paizaランク D 相当)
a,b = gets.chomp.split(" ").map{|n|n.to_i}
puts a+b

# 文字列の長さ (paizaランク D 相当)
leng = gets
puts leng.length

# 文字列の1文字目 (paizaランク D 相当)
s = gets
puts s.slice(0)

# 大文字にする (paizaランク D 相当)
oomoji = gets
puts oomoji.upcase

# あいだの整数 (paizaランク D 相当)
a,b = gets.chomp.split(" ").map{|n|n.to_i}
puts (a..b).to_a

# 指定範囲だけ大文字 (paizaランク C 相当)
nums = gets.chomp.split(' ')
str = gets.chomp

# 文字数分の展開を
(1..(str.size)).each do |i|
  if nums[0].to_i <= i && i <= nums[1].to_i
    # 対象に入っていたら大文字
    print str[i - 1].upcase
  else
    # 対象に入っていなければ小文字
    print str[i - 1]
  end
end