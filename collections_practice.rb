def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    b <=> a
  end  
end

def sort_array_char_count(array)
  new_array = array.sort_by {|word| word.length}
end

def swap_elements(array)
  swap_array = array[1]
    array[1] = array[2]
    array[2] = swap_array
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
    new_array = []
      array.each do |word|
      word[2] = "$"
      new_array << word
    end
  new_array
end

def find_a(array)
  array.select {|word| word.start_with?("a")}
end

def sum_array(array)
  sum = 0
    array.each do |num|
    sum += num
  end
  sum 
end

def add_s(arr)
  arr.collect do |word|
    if arr[1] == word
      word
    else
      word + "s" 
    end
  end
end

