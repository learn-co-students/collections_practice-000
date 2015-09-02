def sort_array_asc(n_array)
  n_array.sort
end

def sort_array_desc(n_array)
  n_array.sort do | a, b |
    b <=> a
  end
end

def swap_elements(n_array)
  swapped_array = []
  n_array.each_with_index do |item, idx|
    if idx == 1
      swapped_array[2] = item
    elsif idx == 2
      swapped_array[1] =item
    else
      swapped_array << item
    end
  end
    swapped_array
end

def reverse_array(n_array)
    n_array.reverse
end

def kesha_maker(n_array)
  n_array.each do |word|
    word[2] = "$"
  end
end

def find_a(n_array)
  n_array.select {|word| word[0] == "a"}
end

def sum_array(n_array)
  sum_of_array = 0
  n_array.each {|x| sum_of_array += x}
  sum_of_array
end

def add_s(n_array)
  n_array.each do |word|
    word << "s" if word != n_array[1]
  end
end