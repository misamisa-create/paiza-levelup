# 模範解答の答え
# `$'で始まる変数はグローバル変数で、プログラムのどこからでも参照できます
$board = []

# 盤面の初期化
# 5回入力する
(1..5).each { $board.push(gets.chomp.split('')) }
# 5つ並んでいるかどうか
def aligned?(o, x)
  if o == 5
    'O'
  elsif x == 5
    'X'
  else
    'D'
  end
end
# 横にならんでいるかどうか
def row_aligned?
  result = ''

  $board.each do |row|
    o = 0
    x = 0
    (0..4).each do |i|
      if row[i] == 'O'
        o = o + 1
      elsif row[i] == 'X'
        x = x + 1
      else
        break
      end
    end

    result = aligned?(o, x)
    break if result != 'D'
  end

  result
end

def collum_aligned?
  result = ''

  (0..4).each do |i|
    o = 0
    x = 0
    $board.each do |row|
      if row[i] == 'O'
        o = o + 1
      elsif row[i] == 'X'
        x = x + 1
      end
    end

    result = aligned?(o, x)
    break if result != 'D'
  end

  result
end

def oblique_aligned?
  result = ''

  (0..1).each do |time|
    i = 0

    if time.zero?
      j = 0
    else
      j = 4
    end

    o = 0
    x = 0
    (1..5).each do
      if $board[i][j] == 'O'
        o = o + 1
      elsif $board[i][j] == 'X'
        x = x + 1
      end

      i = i + 1

      if time.zero?
        j = j + 1
      else
        j = j - 1
      end
    end

    result = aligned?(o, x)
    break if result != 'D'
  end

  result
end

if row_aligned? == 'O' || collum_aligned? == 'O' || oblique_aligned? == 'O'
  puts 'O'
elsif row_aligned? == 'X' || collum_aligned? == 'X' || oblique_aligned? == 'X'
  puts 'X'
else
  puts 'D'
end