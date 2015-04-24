def largest_factor(number)
  prime_list = [2, 3]
  until number == 1
    prime_list << next_prime(prime_list)
    if number % prime_list.last == 0
      number /= prime_list.last
    end
  end
  prime_list.last
end

def next_prime(prime_list)
  prime_candidate = prime_list.last
  found_prime = false
  until found_prime
    found_prime = true
    prime_candidate += 2
    prime_list.each do |prime|
      if prime_candidate % prime == 0
        found_prime = false
        break
      end
    end
  end
  prime_candidate
end

puts largest_factor(600851475143)
