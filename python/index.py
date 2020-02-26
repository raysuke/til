# 文字列の使い方

# 1行（クォーテーションはどちらでも変わらない（変数展開はない））
hoge = 'こんにちわ'
hoge = "こんにちわ"
# 複数行
hoge = '''こんにちわ
私は
hogeです'''
# 文字列の連結
hoge = '私は' + 'hogeです'
# 文字列を繰り返す
hoge = '01' * 10
# 数値と文字列の連結は文字列に変換してから連結する
hoge = str(0) + '1'

# 範囲指定で文字列を抜き出す
hoge = 'Hello World'
print(hoge[1:4]) # ell
print(hoge[:4]) # Hell
print(hoge[6:]) # World
print(hoge[1:5:2]) # el

# 条件分岐
age = 19
if age < 20:
	print('child')
elif age > 20:
	print('too adult')
else:
	print('adult!')

# ループ
subjects = ['国語', '数学', '英語', '理科', '社会']
for subject in subjects:
	print(subject)
else:
	print('五教科')
