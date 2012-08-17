# 0, 1, 1, 2, 3, 5, 8, 13
def fabonacci n
  return 0 if n == 0
  return 1 if n == 1
  return fabonacci(n-1) + fabonacci(n-2)
end
def get_array n
  result = []
  n.times.to_a.reverse.each { |i| result << fabonacci(i) }
  return result
end

puts "fabonacci 0: #{fabonacci(0)}"
puts "fabonacci 1: #{fabonacci(1).inspect}"
puts "fabonacci 8: #{fabonacci(8).inspect}"
puts "fabonacci 8(array): #{get_array(8).inspect}"

(1..20).each do |i|
    puts "fabonacci ratio:  #{(fabonacci(i).to_f)/fabonacci(i+1)}"
end
