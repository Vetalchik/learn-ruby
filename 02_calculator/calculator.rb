def add(a,  b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  result = 0
  array.each do | n |
    result += n
  end
  result
end

def multiply(array)
  return 0 if array.empty?
  result = 1
  array.each do | n |
    result *= n
  end
  result
end

def power(number, pow)
  number ** pow
end

def factorial(n) 
  factorial = 1
  return factorial if n == 0
  while n > 1
    factorial *= n
    n -= 1
    puts "factorial = #{factorial}, n = #{n}"
  end
  factorial
end