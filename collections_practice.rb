def sort_array_asc array 
  array.sort do |a,b|
    a <=> b
  end
end

def sort_array_desc array
  array.sort do |a,b|
    b <=> a
  end
end

def swap_elements array
  second = array[1] 
  third = array[2]
  array[1] = third
  array[2] = second
  array
end

def kesha_maker array
  array.collect do |item|
    item[2] = "$"
    item
  end
end

def reverse_array array
  array.reverse!
end

def find_a array
  array.select do |item|
    item[0] == "a"
  end
end

def sum_array array
  sum = 0
  array.each do |num|
    sum += num
  end
  sum
end

def add_s array
  array.collect do |item|
    if item != array[1]
      item + "s"
    else
      item
    end
  end
end