# qiitaにあった問題
# n人の名前と年齢が　Qiita 30 のように名前と年齢の間には半角空白が入力される。
# 名前と年齢に１を加えた数値を　Qiita 31のように出力してください。
n = gets.to_i
n.times do
  name,age = gets.split(" ")
  puts "#{name}"+" "+"#{age.to_i + 1}"
end