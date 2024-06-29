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

# 100行の整数の入力
a = Array.new(100)
100.times { |i| a[i] = gets.to_i }
a.each { |val| puts val }


# 2 行目で与えられる N 個の整数の入力
# 1行目で整数 N を読み取る
n = gets.to_i

# 2行目で N 個の整数を読み取る
numbers = gets.split.map(&:to_i)

# 各整数を改行区切りで出力する
numbers.each do |num|
  puts num
end


# 2 行目で与えられる N 個の入力
# 1 行目で与えられる整数 N を取得
n = gets.to_i
# 2 行目で与えられる N 個の文字列を取得
strings = gets.split
# 各文字列を改行区切りで出力
strings.each { |str| puts str }


# 1 行目で与えられる N 個の整数の入力
input = gets.split.map(&:to_i)

n = input[0]

numbers = input[1..n]

numbers.each { |num| puts num }


# 1 行目で与えられる N と N 個の文字列を取得
input = gets.split

# 最初の要素を整数 N として取得
n = input[0].to_i

# 残りの N 個の文字列を取得
strings = input[1..n]

# 各文字列を改行区切りで出力
strings.each { |str| puts str }



# N 組の整数の入力
# 1 行目で与えられる整数 N を取得
n = gets.to_i

# 2 行目以降の N 行で与えられる整数のペアを取得し、配列に格納
pairs = Array.new(n) { gets.chomp }

# 各ペアを改行区切りで出力
pairs.each { |pair| puts pair }



# 【N 行 M 列のデータの入力】行ごとに要素数の異なる整数列の入力
入力例1
3
1 8
2 8 1
3 8 1 3
出力例1
8
8 1
8 1 3
n = gets.to_i

m = Array.new(n) { gets.chomp.split }

m.each do |row|
  row.shift  # 先頭の M_i を取り除く
  puts row.join(' ')  # 残りの部分をスペース区切りで出力
end



# 大きな数値を 3 けたごとにカンマ区切りで出力
n = gets.chomp
# n.reverse で文字列を逆順にする。これにより、末尾から3桁ごとに区切ることが容易になる。
# scan(/\d{1,3}/) で逆順にした文字列を3桁ごとに分割
# join(",") で分割された部分をカンマで連結
# 最後に reverse で再び文字列を元の順序に戻す
# \d{1,3} は「1桁から3桁の数字」を意味する
result = n.reverse.scan(/\d{1,3}/).join(",").reverse
# 結果を出力
puts result


# 2 * 2 の出力 二次元配列
0 8
1 3

# 数値を配列に格納
numbers = [0, 8, 1, 3]

# 二次元配列に数値を配置
matrix = [
  [numbers[0], numbers[1]],
  [numbers[2], numbers[3]]
]

# 二次元配列を出力
matrix.each do |row|
  puts row.join(' ')
end


# 3 * 3 の出力
# 入力を受け取って配列に変換
numbers = gets.split.map(&:to_i)

# 3行3列の形式で出力
(0..2).each do |i|
  puts numbers[i*3, 3].join(' ')
end


# 九九表の出力
n = []

# 1から9までの掛け算の結果を配列に追加
(1..9).each do |i|
  (1..9).each do |j|
    n << i * j
  end
end

(0..8).each do |i|
  puts n[i*9, 9].join(' ')
end


# N 個の文字を半分ずつ出力
n = gets.to_i

# 1 以上 N/2 以下の数値を取得
first_half = (1..n/2).to_a

# N/2 + 1 以上 N 以下の数値を取得
second_half = ((n/2 + 1)..n).to_a

# 各配列をスペース区切りで出力
puts first_half.join(' ')
puts second_half.join(' ')


入力例1
4
出力例1
1
1 2
1 2 3
1 2 3 4
# 標準入力から N を取得
n = gets.to_i

# 1から N までの各行について処理
(1..n).each do |i|
  # 1から i までの数列を作成して出力
  puts (1..i).to_a.join(' ')
end



# N を丸めて小数第 3 位まで出力
input_line = gets

# 実数に変換
n = input_line.to_f

# 小数第 3 位まで丸めて出力
printf('%.3f', n)



# 自然数を 3 けたになるよう、半角スペース埋めで出力します。
n = gets.to_i

# フォーマット文字列を使って出力
printf("%3d\n", n)



入力例1
4
0
8
81
813
出力例1
0
8
81
813
n = gets.to_i

# N個の数値を読み取る
n.times do
  m = gets.to_i
  # 3桁にするために前に半角スペースを埋めて出力
  printf("%3d\n", m)
end


入力例1
5 2
1 2 3 4 5
出力例1
2
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

# M番目の値を出力（Mは1始まりなので、インデックスとしてはM-1）
puts a[m-1]



入力例1
5
10 20 30 40 50
3
2 4 1
出力例1
20
40
10
n = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i
b = gets.split.map(&:to_i)

# 数列Bの各要素に対して、数列Aの対応する要素を出力
b.each do |bi|
  puts a[bi - 1]
end

