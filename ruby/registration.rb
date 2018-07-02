def register_data(data)
  puts "名前を入力してね"
  name = gets.chomp
  puts "年齢を入力してね"
  age = gets.chomp.to_i
  puts "身長を入力してね"
  tall = gets.to_f
  puts "体重を入力してね"
  weight = gets.to_f

  person = {name: name, age: age, tall: tall, weight: weight, bmi: calculate_bmi(tall, weight)}

  data << person
  # 人の登録をするための関数を完成させなさい
  # 身長と体重では少数を扱えるようにto_iではなくto_fを使用すること
end

def calculate_bmi(tall, weight)
  bmi = weight / (tall * tall)
  # BMIを求めるための関数を完成させなさい
end

def show_data_list(data)
  puts '見たい人の番号を選択してください'

  data.each_with_index do |person, i|
    puts "番号#{i + 1}: 名前・・・#{person[:name]}"
  end
    input = gets.to_i - 1
    show_data(data, input)
  # 保存された全て人の名前と番号を表示するための関数を完成させなさい
  # 表示形式が番号; 名前となるようにしなさい
end

def show_data(data, input)
  person = data[input]
  puts "名前は#{person[:name]}"
  puts "年齢は#{person[:age]}歳です！"
  puts "身長は#{person[:tall]}mです"
  puts "体重は#{person[:weight]}kgです"
  puts "bmiは#{person[:bmi]}です！！！"
  # 一覧から選択された人の全ての情報を表示する関数を完成させなさい
end

data = []
while true
  puts '選択してください'
  puts '[0]登録する'
  puts '[1]データを確認する'
  puts '[2]終了する'
  input = gets.to_i

  if input == 0
    register_data(data)
    # 人の情報をするための関数を呼びなさい
  elsif input == 1
    show_data_list(data)
    # 保存されたデータを一覧で表示するための関数を呼びなさい
  elsif input == 2
    exit
    # アプリケーションを終了させなさい
  else
    puts '無効な値です'
  end
end