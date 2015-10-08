# When done, submit this entire file.

# Part 1

def sum arr
  # YOUR CODE HERE
  ret=0;
	if arr.size>=0 then
		arr.each{|i| ret+=i}

	end
  return ret;
end


def max_2_sum arr
  # YOUR CODE HERE
  
  if arr.size == 0 then
  	ret = 0
  elsif arr.size == 1 then
  	ret = arr.at(0)
  elsif 
  	max2 = max1 = arr.min
  	arr.each{|i|
  		if max1 < i then
  			max2 = max1;
  			max1 = i
  		elsif max2 < i then
  			max2 = i
  		end
  	}
  	ret = max1+max2
  end
  return ret
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if (arr.size == 0 && n == 0) 
	  return true;
  end
  for i in 0...arr.size
  	right = n - arr.at(i)
  	for j in (i+1)...arr.size 
  		if arr.at(j) == right
  			return true
  		end
  	end
  end
  return false
end	  


# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty? 
	  return false;
  end
  str = s.downcase
  if (str[0] =='a' || str[0] == 'e' || str[0] == 'i' || str[0] == 'o' || str[0] == 'u')
  	return true
  else 
  	return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  len = s.length;
  if (len < 3) 
  	return false;
  end
  for i in 0...len   
  	if (s[i] != '0' && s[i] != '1') 
  		return false;
  	end
  end
  if (s[0] != '1')  
  	return false
  end
  if (s[len-1] == '0' && s[len-2] == '0') 
  	return true
  else
  	return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize(isbn,price)
		begin
			if (isbn.empty? )
				raise ArgumentError, " ISBN number is the empty!"
			elsif (price <= 0)
				raise ArgumentError, "price is less than or equal to zero!"
			end
			@isbn, @price = isbn, price
		rescue ArgumentError => e
			puts e.message
		end
	end
	# getter
	def getIsbn
		@isbn
	end
	def getPrice
		@price
	end
	# setter
	def setIsbn=(value)
		begin
			if (value.empty? )
				raise ArgumentError, " ISBN number is the empty!"
			end
			@isbn = value
		rescue ArgumentError => e
			puts e.message
		end
	end
	def setPrice=(value)
		begin
			if (value <= 0)
				raise ArgumentError, "price is less than or equal to zero!"
			end
			@price = value
		rescue ArgumentError => e
			puts e.message
		end
	end
	# other func
	def price_as_string
		return "$#{format("%0.2f",@price)}"
	end
end

