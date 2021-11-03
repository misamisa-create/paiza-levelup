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
# hash = {}
# type = gets.chomp
# n = gets.to_i
# n.times do
#   # 値を受け取り、代入する
#   values  = gets.split(' ')
#   key = values[0]
#   value = values[1]
#   hash[key] = value
# end
# hash.each do |key,value|
#   if key == type
#     puts hash[type]
#   end
# end

# 1人の占い結果 (paizaランク C 相当)
# # 人名と血液型
# human_hash = {}
# # 血液型と色
# color_hash = {}
# user = gets.chomp
# n = gets.to_i
# n.times do
#   # 値を受け取り、代入する
#   values  = gets.split(' ')
#   key = values[0]
#   value = values[1]
#   human_hash[key] = value
# end
# # ↑ここまでで人名の要素ができる
# m = gets.to_i
# m.times do
#   bloods = gets.split(' ')
#   blood = bloods[0]
#   color = bloods[1]
#   color_hash[blood] = color
# end
# # ↑ここまでで血液型と色の取得ができる
# human_hash.each do |key,value|
#   color_hash.each do |blood,color|
#     if user == key && value == blood
#       puts color
#     end
#   end
# end

# 占い (paizaランク C 相当)
# 人名と血液型
n = gets.to_i
human_hash = {}
n.times do
  # 値を受け取り、代入する
  values  = gets.split(' ')
  key = values[0]
  value = values[1]
  human_hash[key] = value
end
# ↑ここまでで人名の要素ができる
# 血液型と色
color_hash = {}
m = gets.to_i
m.times do
  bloods = gets.split(' ')
  blood = bloods[0]
  color = bloods[1]
  color_hash[blood] = color
end
# ↑ここまでで血液型と色の取得ができる
human_hash.each do |key,value|
  color_hash.each do |blood,color|
    if value == blood
      puts key + " " + color_hash[value]
    end
  end
end
