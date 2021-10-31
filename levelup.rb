# 占い(C)

# 連想配列（辞書）を使う (paizaランク D 相当)
# str_array = { "Kyoko" => "B", "Rio" => "O", "Tsubame" => "AB", "KurodaSensei" => "A", "NekoSensei" => "A" }
# # プッシュするときはこんな感じ
# str_array["Anna"] = "U"
# puts str_array

# ユーザーの血液型のデータ処理 (paizaランク C 相当)
# hash = {}
# n = gets.to_i
# n.times do
#   # 値を受け取り、代入する
#   values  = gets.split(' ')
#   key = values[0]
#   value = values[1]
#   hash[key] = value
# end
# hash.each do |key,value|
#   puts key+" "+value
# end

# 1人の血液型 (paizaランク C 相当)
# hash = {}
# user = gets.chomp
# n = gets.to_i
# n.times do
#   # 値を受け取り、代入する
#   values  = gets.split(' ')
#   key = values[0]
#   value = values[1]
#   hash[key] = value
# end
# hash.each do |key,value|
#   if key == user
#     puts user + " " + hash[user]
#   end
# end

# 1つの血液型を占う (paizaランク C 相当)
hash = {}
type = gets.chomp
n = gets.to_i
n.times do
  # 値を受け取り、代入する
  values  = gets.split(' ')
  key = values[0]
  value = values[1]
  hash[key] = value
end
hash.each do |key,value|
  if key == type
    puts hash[type]
  end
end