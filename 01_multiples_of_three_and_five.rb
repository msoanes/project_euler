def sum_of_multiples_of_three_and_five(maximum)
  numbers = (1..maximum).to_a
  filtered_numbers = numbers.select do |num|
    num % 5 == 0 || num % 3 == 0
  end
  filtered_numbers.inject(:+)
end

puts sum_of_multiples_of_three_and_five(999)
