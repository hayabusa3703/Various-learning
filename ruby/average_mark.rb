def registration_student(students)
  # 生徒の名前と年齢を登録できるようにしないさい
  student = {}
  puts '生徒名を入力してください'
  student[:name] = gets.chomp
  puts '生徒の年齢を入力してください'
  student[:age] = gets.to_i
  student[:score] = registration_score(student)

  students << student
end

def registration_score(student)
  # registration_studentで登録した生徒の国語、数学、英語の点数を登録できるようにしなさい
  score = {}
  puts '国語の点数を入力してください'
  score[:language] = gets.to_i
  puts '数学の点数を入力してください'
  score[:math] = gets.to_i
  puts '英語の点数を入力してください'
  score[:english] = gets.to_i
  student[:score] = score
end

def show_student_name(students)
  # 登録された生徒の名前を番号を振って表示しなさい
  puts '見たい生徒の番号を入力してください'
  students.each_with_index do |student, i|
    puts "番号#{[i + 1]} 名前・・・#{student[:name]}"
  end
    input = gets.to_i - 1
    show_student_score(students, input)

end

def show_student_score(students, input)
  # 選択された生徒の名前、年齢、国語、数学、英語の点数を表示できるようにしなさい
  # 余裕がある場合は3教科の平均点を求められるようにしてください（採点時に加点します）
  student = students[input]
  puts "名前:#{student[:name]}"
  puts "年齢:#{student[:age]}"
  puts "国語: #{student[:score][:language]}"
  puts "数学: #{student[:score][:math]}"
  puts "英語: #{student[:score][:english]}"
  puts "平均点は・・・・・#{(student[:score][:language] + student[:score][:math] + student[:score][:english]) / 3}です！！！"
end

students = []

while true
  puts '行いたい項目を選択してください'
  puts '[1]点数を登録する'
  puts '[2]点数を確認する'
  puts '[3]終了する'
  input = gets.to_i
  puts input
  if input == 1
    registration_student(students)
  elsif input == 2
    show_student_name(students)
  elsif input == 3
    exit
    # アプリケーションを終了させなさい
  else
    puts '無効な値です'
  end
end