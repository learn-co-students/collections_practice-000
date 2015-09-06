require 'pry'

def sort_array_asc(int_array) 
  int_array.sort
end

def sort_array_desc(int_array)
  int_array.sort do |a,b|
    b <=> a
  end
end

def reverse_array(array)
  array.reverse
end

def swap_elements(array)
  array[1], array[2] = array[2],array[1]
  array
end

def kesha_maker(array)
  return_array = []
  array.each do |i|
    i = i.sub(i[2], "$")
    return_array << i
  end
  return_array
end

def find_a(array)
  return_array = []
  array.map{|i| 
    if i.start_with?("a")
      return_array << i
    end
  }
  return_array
end

def sum_array(array)
  sum = 0
  array.each {|i| sum += i}
  sum
end

def add_s(array)
  array.map {|i|
    if i != array[1]
      i << "s"
    else
      i
    end
  }
end
