# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	sum = 0
	arr.each do |element|
		sum += element
	end
	sum
end

def max_2_sum arr
	largest = nil
	second_largest = nil
	arr.each do |element|
		if largest == nil or element > largest 
			second_largest = largest
			largest = element
		elsif second_largest == nil or element > second_largest
			second_largest = element
		end
	end
	if largest == nil
		sum = 0
	elsif second_largest == nil
		sum = largest
	else
		sum = largest + second_largest
	end
	sum
end

def sum_to_n? arr, n
  arr.each do |element1|
  	arr.each do |element2|
  		if ( n == element1 + element2 ) and arr.index(element1) != arr.index(element2)
  			return true
  		end
  	end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
	if s.length != 0
		"bcdfghjklmnpqrstvwxyz".include? s[0].downcase
	else
		false
	end
end

def binary_multiple_of_4? s
	total = 0
	if s.length == 0
		return false
	end
    s.reverse.split('').each_with_index do |character, index|
    	if character == "1"
    		total += 2**index
    	elsif character != "0"
    		return false
    	end
    end
    total%4==0
end

# Part 3

class BookInStock
	def initialize(isbn, price)
		raise ArgumentError, "ISBN is empty" unless isbn.length > 0
		raise ArgumentError, "price is less than or equal to 0" unless price > 0
		@isbn = isbn
		@price = price
	end

	attr_accessor :isbn, :price

	def price_as_string
		rounded_price_string = @price.round(2).to_s
		if rounded_price_string.split(".")[1].length == 1
			rounded_price_string += "0"
		end
		"$" + rounded_price_string
	end
end
