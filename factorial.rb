def factorial n
  return 1 if n == 1
  return factorial(n-1) * n
end


puts "factorial 1: #{factorial 1 }"
puts "factorial 3: #{factorial 3 }"
puts "factorial 11: #{factorial 11 }"


# 0, 1, 1, 2, 3, 5, 8, 13
def fabonacci n
  result = []
  if n == 0
    result << n
  else
    result << n + fabonacci(n-1)
  end
  return result
end

puts "fabonacci 0: #
