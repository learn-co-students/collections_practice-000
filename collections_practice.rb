def sort_array_asc(ints)
  ints.sort!
end

def sort_array_desc(ints)
  ints.sort!.reverse!
end

def sort_array_char_count(strs)
  strs.sort { |x, y| x.length  <=> y.length}
end


def swap_elements_from_to(arr, from_index, to_index)
  x = arr[from_index]
  arr[from_index] = arr[to_index]
  arr[to_index] = x
  return arr
end

def swap_elements(arr)
  swap_elements_from_to(arr, 1,2)
end

def reverse_array(arr)
  arr.reverse!
end

def kesha_maker(arr)
  arr.each do |str|
    str.sub!(str[2], "$")
  end
  arr
end

def start_with?(str, letter)
  str[0].upcase! == letter.upcase!
end

def find_a(arr)
  arr.select { |str| start_with?(str, "a") }
end

def sum_array(arr)
  arr.reduce :+
end

def add_s(arr)
  arr.each_with_index.collect { |word, i| i != 1? word + "s" : word}
end








