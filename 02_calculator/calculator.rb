def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def sum(numbers)
  sum = 0

  numbers.each() do |number|
    sum += number
  end

  sum
end

def power(a, b)
  result = 1

  b.times do
    result *= a
  end

  result
end

def factorial(a)
  result = 1

  while a > 0
    result *= a
    a -= 1
  end

  result
end
