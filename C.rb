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

