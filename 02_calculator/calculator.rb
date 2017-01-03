def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  sum = 0
  array.map {|el| sum += el}
  sum
end

def multiply(array)
  multi = 1
  array.map { |el| multi *= el }
  multi
end

def power(a, b)
  a ** b
end

def factorial(a)
  if a == 0
    return 1
  else
    return a * factorial(a-1)
  end
end
