def sort_array_asc(array)
  return array.sort
end

def sort_array_desc(array)
  return array.sort.reverse
end

def sort_array_char_count(array)
  return array.sort_by{|x| x.length}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  return array
end

def reverse_array(array)
  return array.reverse
end

def kesha_maker(array)
  return array.each {|element| element[2] = "$"}
end

def find_a(array)
  return array.grep(/^a/)
end

def sum_array(array)
  sum = 0
  array.each {|element| sum+=element}
  return sum
end

def add_s(array)
  array.each_with_index do |element, index|
    element != array[1] ? element << "s" : false
  end
  return array
end