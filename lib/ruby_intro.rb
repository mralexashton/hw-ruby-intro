# When done, submit this entire file to the autograder.

# Part 1

def sum arr
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
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
