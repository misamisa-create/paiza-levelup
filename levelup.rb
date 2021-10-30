# 五目並べ(ランクB)

# 2.五目並べ(1行) (paizaランク D 相当)
# 1行5列の五目並べの盤面が与えられます。
# 盤面の各マスには、"O"か"X"か"."が書かれています。
# "O"と"X"は、それぞれプレイヤーの記号を表します。
# 同じ記号が横に連続で5つ並んでいれば、その記号のプレイヤーが勝者となります。
# 勝者の記号を1行で表示してください。
# 勝者がいない場合は、引き分けとして、"D"を表示してください。

# array = %w[O X]
# string = gets.chomp.split('')
# result = 'D'
# # OとXを展開
# array.each do |a|
#   # 並びの数
#   cnt = 0
#   # 入力した文字列を展開
#   string.each { |s| cnt = cnt + 1 if s == a }
#   result = a if cnt >= 5
# end

# puts result

# 3.五目並べ(横) (paizaランク C 相当)
# 5行5列の五目並べの盤面が与えられます。
# 盤面の各マスには、"O"か"X"か"."が書かれています。
# "O"と"X"は、それぞれプレイヤーの記号を表します。
# 同じ記号が横に連続で5つ並んでいれば、その記号のプレイヤーが勝者となります。
# 勝者の記号を1行で表示してください。
# 勝者がいない場合は、引き分けとして、"D"を表示してください。

# array = %w[O X]
# result = 'D'
# 5.times do
#   string = gets.chomp.split('')
#   # OとXを展開
#   array.each do |a|
#     # 並びの数
#     cnt = 0
#     # 入力した文字列を展開
#     string.each { |s| cnt = cnt + 1 if s == a }
#     result = a if cnt >= 5
#   end
# end
# puts result

# 4.五目並べ（縦） (paizaランク C 相当)

board = []
result = 'D'

# 盤面の初期化
# 5回入力された内容をboardへpushする
(1..5).each { board.push(gets.chomp.split('')) }

(0..4).each do |i|
  o = 0
  x = 0
  board.each do |row|
    if row[i] == 'O'
      o = o + 1
    elsif row[i] == 'X'
      x = x + 1
    end
  end

  if o == 5
    result = 'O'
    break
  elsif x == 5
    result = 'X'
    break
  end
end

puts result