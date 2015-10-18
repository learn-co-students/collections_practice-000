def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def swap_elements(array)
  array[0], array[1], array[2] = array[0], array[2], array[1]
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each do |x|
    x[2] = "$"
  end
end

def find_a(array)
  new_array = []
  array.each do |x|
    if x.start_with?("a", "A") == true
      new_array << x
    end
  end
  new_array
end

def sum_array(array)
  sum = 0
  array.each do |x|
    sum += x
    end
 sum
end

def add_s(array)
#  new_array = []
  array.each_with_index do |element, index|
  if index != 1
    element << "s"
  end
end
end
