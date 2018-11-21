module Fib
  IN_MEMORY = {
    0 => 0,
    1 => 1
    }
  
  def Fib.fibonacci(n)
    return IN_MEMORY[n] if IN_MEMORY[n]
    nth_result = self.fibonacci(n - 1) + self.fibonacci(n - 2)
    IN_MEMORY[n] = nth_result
    return nth_result
  end

  def Fib.fibonacci_tail_recursive(nth_1, nth_2, current_iteration, n)
    return 0 if n == 0
    return 1 if n == 1 or n == 2
    if current_iteration > n
      IN_MEMORY[n] = nth_1 + nth_2
      return nth_1 + nth_2
    end

    fibonacci_tail_recursive(nth_2, nth_1+nth_2, current_iteration+ 1, n)
  end
  
  
end

# puts Time.new
# (1..1000000).each do |i|
#   Fib::fibonacci(i)
# end
# puts Time.new
# (1..1000000).each do |i|
#   Fib::fibonacci_tail_recursive(0, 1, 0, i)
# end
# puts Time.new