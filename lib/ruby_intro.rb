# frozen_string_literal: true

# Part 1

def sum(arr)
  totalsum = 0
  arr.each { |a| totalsum+=a }
  return totalsum
end

def max_2_sum(arr)
  len = arr.size
  if len == 0
    return 0
  elsif len == 1
    return  arr[0]
  else
    arr1 = arr.sort()
    return arr1[len-1]+arr1[len-2]
  end
end

def sum_to_n?(arr, number)
  len = arr.size
  if len >1
    for i in 0...len
      for j in i+1...len
        if (arr[i]+arr[j] == number)
          return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  prefix = "Hello, "
  return prefix+name
end

def starts_with_consonant?(string)
  val = /\A(?i:[b-df-hj-np-tv-z])/.match(string)
  if val!= nil
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.size >1
    if /[^01]/.match(string) != nil
      return false
    else
      if /0{2}$/.match(string) != nil
        return true
      end
    end
  elsif string == '0'
    return true
  else
    return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  #constructor  of class
  def initialize(i,p)
    if i.size == 0 || p <= 0
      raise ArgumentError
    end
    @isbn = i
    @price = p
    def price_as_string
      @price = "$%0.2f" % [@price]
    end
  end 
  #getters for class
  def isbn
    @isbn
  end
  def price
    @price
  end
  #setters for calss
  def isbn=(value)
    @isbn = value
  end
  def price=(value)
    @price = value
  end
end
