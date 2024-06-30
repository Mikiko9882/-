n = gets.to_i

n.times do
  line = gets.chomp
  name, age_str = line.split   # 名前と年齢をスペースで分割
  age = age_str.to_i + 1       # 年齢を文字列から整数に変換し、1歳増やす
  puts "#{name} #{age}"        # 名前と増やした年齢を出力
end

# 文字列
# 入力の読み込み
n = gets.to_i

# 各週の工事終了時刻を計算して出力
n.times do
  # 時間、足す時間、足す分で分けている。ex)13:00 1 30
  t, h, m = gets.split
  # 時間を分けて表示　ex)13:00 -> 13 00
  start_hours, start_minutes = t.split(":").map(&:to_i)
  # 1 30 を整数にしている
  duration_hours = h.to_i
  duration_minutes = m.to_i

  # 開始時刻に工事時間を加算
  end_minutes = start_minutes + duration_minutes
  #  end_minutes が60を超えていた場合、その超過分を「時間」として加算
  end_hours = start_hours + duration_hours + (end_minutes / 60)
  # end_minutes を60で割った余りを計算し、60以上の分を0〜59の範囲に収める。
  end_minutes %= 60
  # end_hours を24で割った余りを計算し、24以上の時間を0〜23の範囲に収める。
  end_hours %= 24

  # 時刻のフォーマット
  # 2桁にならない場合は、0で埋めろということ。"hh:mm" の形の文字を作っている
  end_time = sprintf("%02d:%02d", end_hours, end_minutes)
  puts end_time
end


# 1行目から N(人数), M(M個参加者は数字を書く), K(M以下の数字で、M個の中にKがあれば得点) を取得
n, m, k = gets.split(' ').map(&:to_i)

a = Array.new(n)
# a は n 個の配列を含む2次元配列になる
n.times { |i| a[i] = gets.split(' ').map(&:to_i) }

a.each do |card|
  point = 0
  card.each do |num|
    point += 1 if num == k
  end
  puts point
end


入力例4
0.813 4
出力例4
0.8130

input_line = gets

# 入力を分割して N と M を取得
n, m = input_line.split
n = n.to_f
m = m.to_i

# フォーマット文字列を作成
format_string = "%.#{m}f"

# フォーマットを使って出力
printf(format_string, n)



入力例1
4
0.813 1
0.813 2
0.813 3
0.813 4
出力例1
0.8
0.81
0.813
0.8130
q = gets.to_i
# NとMのペアを読み取る
pairs = Array.new(q) { gets.chomp }
# 各ペアについて処理を行う
pairs.each do |pair|
  n, m = pair.split
  n = n.to_f
  m = m.to_i

  # フォーマット文字列を作成
  format_string = "%.#{m}f"

  # フォーマットを使って出力
  printf(format_string, n)
  puts  # 改行を追加
end


入力例1
3 10 99
出力例1
(10, 99), (10, 99), (10, 99)
n, a, b = gets.split.map(&:to_i)

# (A, B)の形式の文字列をN回繰り返してカンマと半角スペース区切りで連結
result = Array.new(n, "(#{a}, #{b})").join(", ")

# 結果を出力
puts result


# 九九の表をおしゃれにする
(1..9).each do |i|
  (1..9).each do |j|
    # 2桁になるように数値を出力し、区切り文字を追加
    if j < 9
      printf("%2d | ", i * j)
    else
      printf("%2d\n", i * j)
    end
  end
  # 行の間に区切り線を追加
  if i < 9
    42.times { print "=" }
    puts
  end
end


入力例1
2 3 7 8
出力例1
(7, 8) | (7, 8) | (7, 8)
========================
(7, 8) | (7, 8) | (7, 8)
h, w, a, b = gets.split.map(&:to_i)

line = Array.new(w, "(#{a}, #{b})").join(" | ")
# 生成された1行分の文字列の長さを計算
line_width = line.length
# h 行分のループを開始します。h は与えられた行数です。i は現在の行のインデックスです。0から始まり、h-1 まで増加します。
# 現在の行が最後の行でない場合（i < h - 1）、区切り線を出力します。
h.times do |i|
    puts line
    puts "=" * line_width if i < h - 1
end


# 文字列の配列
h, w, r, c = gets.split.map(&:to_i)

# 迷路の各行を読み取って配列に格納する
pairs = Array.new(h) { gets.chomp }

# 指定されたマスが壁かどうかを判定
if pairs[r - 1][c - 1] == '#'
  puts "Yes"
else
  puts "No"
end


# 数値の出現率
n = gets.to_i
a = gets.split.map(&:to_i)

# 出現回数をカウントする配列を用意（0〜9の10個のカウント用）
counts = Array.new(10, 0)

# 各数字の出現回数をカウント
a.each do |num|
  counts[num] += 1
end

# 出現回数をスペース区切りで出力
puts counts.join(" ")



# 入力を読み取る
n = gets.to_i
s = gets.chomp

# アルファベットの出現回数をカウントする配列を用意（a〜zの26個のカウント用）
counts = Array.new(26, 0)

# 各文字の出現回数をカウント
s.each_char do |char|
# 'a'.ord は常に97なので、char.ord - 'a'.ord を計算することで、文字 char が 'a' から何番目に当たるかを知ることができる
  index = char.ord - 'a'.ord
  counts[index] += 1
end

# 出現回数をスペース区切りで出力
puts counts.join(" ")



n = gets.to_i
strings = []
n.times do
  strings << gets.chomp
end

# 出現回数をカウントするハッシュを用意
count_hash = Hash.new(0)

# 各文字列の出現回数をカウント
strings.each do |str|
  count_hash[str] += 1
end

# 辞書順にソートして出力
count_hash.keys.sort.each do |key|
  puts "#{key} #{count_hash[key]}"
end



n, m = gets.split.map(&:to_i)

# 商品名と価格を格納するハッシュを用意
product_prices = {}

# 商品名と価格を読み取ってハッシュに格納
n.times do
  name, price = gets.split
  product_prices[name] = price.to_i
end

# 買い物リストの商品名を読み取って価格を出力
m.times do
  item = gets.chomp
  if product_prices.key?(item)
    puts product_prices[item]
  else
    puts -1
  end
end


n, q = gets.split.map(&:to_i)
# リスト S の要素を読み取る
s = []
n.times do
  s << gets.chomp
end
# リスト T の要素を読み取る
t = []
q.times do
  t << gets.chomp
end
# 各 T_i について最初に一致する S_j を見つける
t.each do |t_item|
  index = s.index(t_item)
  if index
    puts index + 1  # インデックスは0から始まるので、1を足して出力
  else
    puts -1
  end
end


# 重複した数字を表示しない
n = gets.to_i

a = gets.split.map(&:to_i)
# uniq メソッドを使用して配列から重複を取り除く
unique_a = a.uniq

puts unique_a.join(" ")


# 重複の判定 1
n = gets.to_i
a = gets.split.map(&:to_i)

# 各要素に対して判定
(1..n-1).each do |i|
  if a[0..i-1].include?(a[i])
    puts "Yes"
  else
    puts "No"
  end
end

