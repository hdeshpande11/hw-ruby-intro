# HomeWork1 Himani Deshpande

# Part 1

def sum arr
  
  arrsum = 0
  arr.each{|element| arrsum+=element}
  return arrsum
end


def max_2_sum arr
  
  arrsum = 0
  sorted = arr.sort.reverse()
  if arr.size() == 1
    arrsum = sorted[0]
  elsif arr.empty?
    arrsum=0
  else
    arrsum=sorted[0]+sorted[1]
  return arrsum
  end
  
end



def sum_to_n? arr, n
  
  hash=Hash.new
  truthvalue = 0
  arr.each{|element| hash[n-element]==(n-element)? (truthvalue = 1) : (hash[element] = element)}
  if truthvalue == 1 
    return true
  else
    return false
  end
 
end


# Part 2

def hello(name)

  str="Hello, "
  return str.concat(name)
  
end



def starts_with_consonant? s
  
  if s.size()==0
    return false
  end
  if s.match(/^[aeiou\W]/i)
    return false
  else
    return true
  end
    
end



def binary_multiple_of_4? s
  
  if s.match(/^0$/)
    return true
  end  
  if s.match(/^[10][10]*00$/)
    return true
  else
    return false
  end
 
end


# Part 3

class BookInStock

  def initialize(isbn, price)
    raise ArgumentError.new(
    "Expected a non-empty isbn value, got empty string"
  ) if isbn.size == 0
    raise ArgumentError.new(
    "Expected a positive non-zero price value, got #{price}"
  ) if price <= 0

    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price=price
  end
  
  def price_as_string
    @price = '%.2f' % @price
    return "$" + @price.to_s  
  end
end
