#クレジットカードのチェックディジット問題、リファクタリング後

input_line = gets.to_i

input_line.times do
  num = gets
  num = num.chars
  num1 = num.map!{|x| x}

  num1.delete("\n");

  num2 = num1.first(15)

  num3 = num2.map!{|x| x.to_i}

  even = num3.each_slice(2).map(&:first)
  double_even_numbers = even.map { |n| n * 2 }

  double_even_numbers[0]
  double_even_numbers[1]
  double_even_numbers[2]
  double_even_numbers[3]
  double_even_numbers[4]
  double_even_numbers[5]
  double_even_numbers[6]
  double_even_numbers[7]

    if double_even_numbers[0] >= 10
        even0 = double_even_numbers[0] % 10 + 1
    else
        even0 = double_even_numbers[0]
    end

    if double_even_numbers[1] >= 10
        even1 = double_even_numbers[1] % 10 + 1
    else
        even1 = double_even_numbers[1]
    end

    if double_even_numbers[2] >= 10
        even2 = double_even_numbers[2] % 10 + 1
    else
        even2 = double_even_numbers[2]
    end

    if double_even_numbers[3] >= 10
        even3 = double_even_numbers[3] % 10 + 1
    else
        even3 = double_even_numbers[3]
    end

    if double_even_numbers[4] >= 10
        even4 = double_even_numbers[4] % 10 + 1
    else
        even4 = double_even_numbers[4]
    end

    if double_even_numbers[5] >= 10
        even5 = double_even_numbers[5] % 10 + 1
    else
        even5 = double_even_numbers[5]
    end

    if double_even_numbers[6] >= 10
        even6 = double_even_numbers[6] % 10 + 1
    else
        even6 = double_even_numbers[6]
    end

    if double_even_numbers[7] >= 10
        even7 = double_even_numbers[7] % 10 + 1
    else
        even7 = double_even_numbers[7]
    end

  even = even0 + even1 + even2 + even3 + even4 + even5 + even6 + even7

  odd = num3.each_slice(2).map(&:last)
  odd.delete_at(7);
  odd = odd.sum

  even_odd = even + odd
  even_odd = even_odd % 10

    if even_odd == 0
      puts 0
    else
      even_odd = 10 - even_odd
      p even_odd
    end
end