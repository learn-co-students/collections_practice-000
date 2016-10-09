def sort_array_asc(array)
	array.sort
end

def sort_array_desc(array)
	array.sort {|x, y| y <=> x}
end

def sort_array_char_count(array)
	array.sort {|x, y| x.length <=> y.length}
end

def swap_elements(array) 
	a = array[1]
	b = array[2]
	array.delete_at(1)
	array.insert(1, b)
	array.delete_at(2)
	array.insert(2, a)
end

def swap_elements_from_to(array, x, y)
	a = array[x]
	b = array[y]
	array.delete_at(x)
	array.insert(x, b)
	array.delete_at(y)
	array.insert(y, a)
end

def reverse_array(array)
	array.reverse
end

def kesha_maker(array)
	array.collect { |word|
	wordarray = word.split ""
	wordarray.delete_at(2)
	wordarray.insert(2, '$')
	wordarray.join
	}
end

def find_a(array)
	result = Array.new
	array.select {|word|
	if word.start_with?("a")
	result << word
	end
	}
	return result
end

# def sum_array(array)
# 	result = 0
# 	array.select {|item|
# 	if item.integer?
# 	result = result + item
# 	end
# 	}
# 	return result
# end
	
def sum_array(array)
	array.inject {|result, item| result + item}
	
end

def add_s(array)
	 array.each_with_index.collect {|word, index|
	 if index != 1
	 word.concat("s")
	 end
	 }
	 return array
end
