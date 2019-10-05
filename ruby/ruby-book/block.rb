num_list = [1, 2, 3, 4, 5, 6]
num_list = 1..6 # こう書き換えることもできる
# num_list = 1...6 # この場合6は含まれない
result = []

# ====================
# each
# ====================
# eachメソッドの使い方
num_list.each do |num|
	val = num.odd? ? num * 2 : num
	result << val
end

puts result

puts '=================='

# ====================
# map
# ====================
# 上記処理はmapメソッドで置き換えられる
result = []
result = num_list.map do |num|
	num.odd? ? num * 2 : num
end
puts result

puts '=================='

# ====================
# select
# ====================
# selectメソッドは真になった値を返す
result = []
result = num_list.select {|num| num.odd?}
puts result

puts '=================='

# ====================
# reject
# ====================
# rejectメソッドはselectメソッドと反対に、真になった値を除外する
result = []
result = num_list.reject {|num| num.odd?}
puts result

puts '=================='

# ====================
# find
# ====================
# findメソッドは戻り値が真になった最初の値を返す
result = nil
result = num_list.find {|num| num.even?}
puts result

puts '=================='

# ====================
# inject
# ====================
# injectメソッドはブロックの戻り値を次回の処理に引き継ぐことができる

# 配列内の数値をすべて足す場合
## 初回はresultに引数（下記だと0）が入る
## ループが終わると最後の戻り値がsumに入る
sum = num_list.inject(0) {|result, num| result + num}
puts sum

puts '=================='

# 文字列に使う場合
week = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']

result = week.inject {|ret, day| ret + day}
puts result

puts '=================='

# ====================
# ブロック引数の代わりに&を使う
# ====================
result = []
result = num_list.select(&:odd?)
puts result

puts '=================='

# ====================
# each_with_index
# ====================
fruits = [
	'apple',
	'banana',
	'berry',
]
fruits.each_with_index do |fruit, i|
	puts "#{i}番目のフルーツは'#{fruit}'"
end

puts '=================='

# ====================
# xxx.with_index
# ====================

fruits = [
	'apple',
	'banana',
	'berry',
]

puts fruits.map.with_index {|fruit, i| "#{i}番目は'#{fruit}'"}

puts '=================='

# ====================
# times（forの代わり）
# ====================
sum = 0
count = 5
count.times do |n|
	sum += n
end
puts sum

puts '=================='

