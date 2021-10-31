# 五目並べ(ランクB)を解くための演習問題

# 2.五目並べ(1行) (paizaランク D 相当)
array = %w[O X]
string = gets.chomp.split('')
result = 'D'
# OとXを展開
array.each do |a|
  # 並びの数
  cnt = 0
  # 入力した文字列を展開
  string.each { |s| cnt = cnt + 1 if s == a }
  result = a if cnt >= 5
end
puts result
# 3.五目並べ(横) (paizaランク C 相当)
array = %w[O X]
result = 'D'

(1..5).each do
  string = gets.chomp.split('')

  array.each do |a|
    cnt = 0
    string.each { |s| cnt = cnt + 1 if s == a }
    result = a if cnt >= 5
  end
end

puts result
# 4.五目並べ（縦） (paizaランク C 相当)
board = []
result = 'D'

# 盤面の初期化
# 5回入力された内容をboardへpushする
(1..5).each { board.push(gets.chomp.split('')) }
# 5パターン
(0..4).each do |i|
  # o,xが0個並んだ状態
  o = 0
  x = 0
  # 入力された内容を展開
  board.each do |row|
    # 展開された文字のi番目が対象の文字Oだった時
    if row[i] == 'O'
      # oの並ぶ数が１つ増える
      o = o + 1
    elsif row[i] == 'X'
      x = x + 1
    end
  end
  # もしoが5個ならんだら
  if o == 5
    result = 'O'
    break
  elsif x == 5
    result = 'X'
    break
  end
end
puts result

# 5.五目並べ（斜め） (paizaランク C 相当)
# 斜めで記号が揃うパターンは、0 から 4 までの i に対して board[i][i] が同じ記号か、board[i][4 - i] が同じ記号の 2 パターンです。
# board[i][i] が同じ記号なのは左上から右下まで一直線に揃うパターン、board[i][4 - i] が同じ記号なのは右上から左下まで一直線に揃うパターンです。
board = []
result = 'D'
# 盤面の初期化
(1..5).each { board.push(gets.chomp.split('')) }
# 2パターン
(1..2).each do |time|
  o = 0
  x = 0

  i = 0
  # 1パターン目
  if time == 1
    j = 0
  # 2パターン目
  else
    j = 4
  end
  # 入力された5 列を展開
  (1..5).each do
    # board[行][列]
    if board[i][j] == 'O'
      o = o + 1
    elsif board[i][j] == 'X'
      x = x + 1
    else
      break
    end
    
    # iは増えていくだけで良いがjは2パターンある
    i = i + 1
    if time == 1
      j = j + 1
    else
      j = j - 1
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