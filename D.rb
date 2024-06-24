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


# 文字列を出力する問題
n = gets.chomp.to_i

n.times do |i|
  num = gets.chomp.to_i
  puts num.to_s.length #　文字列に変えて出力する
end 


#　sにaが含まれているのか確かめる問題
a = gets.chomp
s = gets.chomp

if s.include?(a)
  puts "YES"
else
  puts "NO"
end


# 整数を取り出す
s = gets

a = s[0].to_i + s[3].to_i
b = s[1].to_i + s[2].to_i

puts a.to_s + b.to_s

# 数字の文字列操作
n = gets.to_i

puts sprintf('%03d', n)
# sprintf メソッドは以下の書式に従った文字列内に変数の値を使うことができます。
# %[<name>][フラグ][幅][.精度]指示子
# %[nth$][フラグ][幅][.精度]指示子
# [] で囲まれた部分は省略可能です。
# 今回の場合、
# フラグ 0 (出力が右詰めの場合に余った部分に空白の代わりに '0' を詰める)
# 幅 3 (生成文字列の長さを 3 に指定)
# 指示子 d (引数の数値を 10 進数の整数として解釈)の 3 つを用いて「幅は 3 で、3 に満たない分は 0 を埋める」という書式を作ります。


# 時間を取り出して分に30分足す
s = gets

a = s.split(':').map(&:to_i) #文字を配列に変えている
h = a[0]
m = a[1]

m += 30
if m > 59
  m -= 60
  h += 1
end

h = h.to_s
m = m.to_s

h = '0' + h if h.length == 1
m = '0' + m if m.length == 1

puts h + ':' + m


# 3倍の数字をカウントする
n = gets.to_i
# 配列に戻す
numbers = gets.split.map(&:to_i)
# 3の倍数をカウントする変数を初期化
count = 0
# 各数字をチェック
numbers.each do |num|
  if num % 3 == 0
    count += 1
  end
end
# 結果を出力
puts count


# 標準入力を一度にすべて読み込んでから、改行で分割し、各行を整数に変換する方法
n = readlines.map(&:to_i)

if n.include?(7)
  puts "YES"
else
  puts "NO"
end


# 入力をすべて読み込んで配列に変換
i = readlines.map(&:to_i)
# 最初の要素が人数 n
n = i[0]
# 最後の要素が探したい金額 k
k = i[-1]
# 人数 n と財産情報の部分だけを取り出す
wealth = i[1..-2]
# wealth の中で k と同じ値を持つ最初の人の番号を見つける。配列のインデックスは0から始まるため
index = wealth.index(k) + 1
# 結果を出力
puts index


# 二重ループ
# 標準入力からすべての行を読み込む
input = readlines.map(&:chomp)
# 最初の行は文字の数 m
m = input[0].to_i
# 次の m 行は文字 c_1, ..., c_m
characters = input[1..m]
# その次の行は文字列の数 n
n = input[m + 1].to_i
# 最後の n 行は文字列 S_1, ..., S_n
strings = input[(m + 2)..-1]

# 各文字 c_i について、各文字列 S_j に出現するかを調べる
characters.each do |c|
  strings.each do |s|
    if s.include?(c)
      puts "YES"
    else
      puts "NO"
    end
  end
end

