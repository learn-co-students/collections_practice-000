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
  second_element = array[1]
  third_element = array[2]
  array[1] = third_element
  array[2] = second_element
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  return_array = []
  array.each do |word|
    word_as_array = word.split("")
    word_as_array[2] = "$"
    word = word_as_array.join
    return_array << word
  end
  return_array
end

def find_a(array)
  array.select do |x|
    x.start_with?("a")
  end
end

def sum_array(array)
  array.inject {|sum, n| sum + n }
end

def add_s(array)
  array.each_with_index do |word, index|
    if index != 1 
      word << "s"
    end
  end
end




