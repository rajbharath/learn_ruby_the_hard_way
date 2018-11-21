RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

require './fibonacci.rb'

puts Time.new
(1..10000).each do |i|
  Fib::fibonacci_tail_recursive(0, 1, 0, i)
end
puts Time.new