def even_fibonacci_sum(maximum)
  running_total = 2
  latest_fibonacci_numbers = [1, 2]
  loop do
    3.times do
      latest_fibonacci_numbers = next_fibonacci_pair(latest_fibonacci_numbers)
    end
    if latest_fibonacci_numbers.last > maximum
      break
    end
    running_total += latest_fibonacci_numbers.last
  end
  running_total
end

def next_fibonacci_pair(fibonacci_pair)
  answer = [fibonacci_pair.last]
  answer << fibonacci_pair.first + fibonacci_pair.last
  answer
end

puts even_fibonacci_sum(4e6)
