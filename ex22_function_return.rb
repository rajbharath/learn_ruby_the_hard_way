PRINT_OPERATION_FORMATTER = '%{operator} %{a} %{b}'.freeze

def log_operation(operator, a, b)
  puts format(PRINT_OPERATION_FORMATTER, operator: operator, a: a, b: b)
end

def add(a, b)
  log_operation('ADDING', a, b)
  return a + b
end

def subtract(a, b)
  log_operation('SUBTRACTING', a, b)
  return a - b
end

def multiply(a, b)
  log_operation('MULTIPLYING', a, b)
  return a * b
end

def divide(a, b)
  log_operation('DIVIDING', a, b)
  return a / b
end


puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78,4)
weight = multiply(30, 2)
iq = divide(200, 2)
puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"