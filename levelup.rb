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
# 途中
array = %w[O X]
result = 'D'
5.times do
  string = gets.chomp.split('')
  # OとXを展開
  array.each do |a|
    # 並びの数
    cnt = 0
    # 展開した入力値がOかXの時対象の並びの数としてカウントする
    string.each { |s| cnt = cnt + 1 if s == a }
    # 対象（OかX）のカウントが5以上の時結果がaになる
    result = a if cnt >= 5
  end
end
puts result