def add(num1, num2)
  num1 + num2.to_f
end

def subtract(num1, num2)
  num1 - num2.to_f
end

def sum(nums)
  nums.sum.to_f
end

def multiply(num1, num2)
  num1 * num2.to_f
end

def power(num1, num2)
  num1 ** num2.to_f
end

def factorial(num)
  0.0 if num == 0
  fact = 1.0
  (1..num).each { |i| fact *= i }
end
