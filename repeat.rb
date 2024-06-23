# "while" "times" は回数を指定して使いたい場合。例えば〜回処理をするなどの時に便利。
# "for" "each" は配列などを参照して、要素がある分だけ繰り返し処理を行いたい場合便利。

# while書き方
i = 0

while i <10 do
    
  puts "#{i}:hello"
  i += 1
    
end


# times書き方
10.times do |i|

  puts "#{i}:hello"

end


# for書き方
for i in 15..20 do
    p i
end
    
for 変数 in 範囲 do
    p i
end
# 変数がinの範囲内で何回も処理を行う。timesなどと違い、変数がinの範囲内に変化する。
for colors in ["red","white"] do
    p colors
end


# each書き方
colors = ["red","white"]

colors.each do |i|

  puts i

end

# 下記でも記入可能
["red","white"].each do |i|

  puts i

end
    
    