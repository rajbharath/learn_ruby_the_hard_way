def one_two_three
  puts 'code works without indentation unlike python'
  return 'No block given' unless block_given?

  puts 'This is implicit block'
  yield 1
  yield 2
  yield 3
end

def explicit_block
  yield
end

one_two_three { |number| puts number * 10 }
one_two_three do |number|
  puts number * 10
end
explicit_block { puts 'Explicit block is called!' }

# You cannot pass multiple blocks to a method. Instead if needed, you can pass multiple Proc and Lambdas

double = ->(number) { number * 2 }

def double_caller(double_lambda)
  double_lambda.call(1)
  double_lambda.(1)
  double_lambda[1]
  double_lambda.===1 # to be used in when clause
end

puts double.call(1)
puts double_caller(double)
