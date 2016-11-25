def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array) 
  array.sort do |a, b|
    b <=> a
  end
end

def sort_array_char_count(string_array)
  string_array.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(array)
  swap = array[1]
  array[1] = array[2]
  array[2] = swap

  array
end

def swap_elements_from_to(array, index, destination_index)
  swap = array[index]
  array[index] = array[destination_index]
  array[destination_index] = swap

  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  return_array = []
  array.each do |word|
    word[2] = "$"
    return_array << word
  end
  return_array
end

def find_a(array)
  array.select {|word| word.start_with?("a")}
end

def sum_array(array)
  array.inject {|sum, n| sum + n}
end

def add_s(array)
  array.each_with_index.collect {|word, index|
    if index != 1 
      word << "s"
    else 
      word 
    end
  }
end




