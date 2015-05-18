def sort_array_asc(array)
  sorted_array = Array.new(array)
  swapped = true
  n = array.length
  until !swapped
    swapped = false
    for index in 1..(n-1)
      if sorted_array[index - 1] > sorted_array[index]    #swap
        swap_elements_from_to(sorted_array, index - 1, index)
        #temp = sorted_array[index]
        #sorted_array[index] = sorted_array[index -1]
        #sorted_array[index - 1] = temp
        swapped = true
      end
    end
  end
  sorted_array
end

def sort_array_desc(array)
  sorted_array = Array.new(array)
  swapped = true
  n = array.length
  until !swapped
    swapped = false
    for index in (n - 1).downto(1)
      if sorted_array[index - 1] < sorted_array[index]    #swap
        swap_elements_from_to(sorted_array, index - 1, index)
        #temp = sorted_array[index]
        #sorted_array[index] = sorted_array[index -1]
        #sorted_array[index - 1] = temp
        swapped = true
      end
    end
  end
  sorted_array
end

def swap_elements(array)
  swap_elements_from_to(array, 1, 2)
  array
end

def swap_elements_from_to(array, index1, index2)
  temp = array[index1]
  array[index1] = array[index2]
  array[index2] = temp
end

def reverse_array(array)
  new_array = []
  for i in (array.length - 1).downto(0)
    new_array << array[i]
  end
  new_array
end

def kesha_maker(array)
  array.each do |name|
    if name.length >= 3
      name[2] = '$'
    end
  end
  array
end

def greater_and_less_than_10(array)

end

def find_winners(array)
end

def find_a(array)
  new_array = []
  array.each do |word|
    if word.start_with?('a')
      new_array << word
    end
  end
  new_array
end

def sum_array(array)

end

def add_s(array)
end

def count_words(array)
end

def organize_songs_by_artist(array)
end





