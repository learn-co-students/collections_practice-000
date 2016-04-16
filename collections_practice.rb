def sort_array_asc(array)
  array = array.sort
  return array
end

def sort_array_desc(array)
  array = array.sort.reverse
  return array
end

def sort_array_char_count(array)
#should return an array in ascending order sorted by the number of characters in the string
  array = array.sort {|left, right| left.length <=> right.length}
  return array
end

def swap_elements(array)
   # swap the second and third elements of an array
   array[1], array[2] = array[2], array[1]
   return array
end

def reverse_array(array)
  array = array.reverse
  return array
end

def kesha_maker(array)
  #taking an array as an input, change the 3rd character of each 
  #element to a dollar sign
  i = 0

  while i < array.length
    array[i][2] = "$"
    i+=1
  end
  return array
end

def find_a(array)
    #find all words that begin with "a" in the following array (FAILED - 7)
    i = 0
    aarray = []
    while i < array.length
      if array[i][0] == "a"
        aarray << array[i]
      end
      i+=1
    end
    return aarray
end

def sum_array(array)
  #sum all the numbers in the following array
  n = 0
  array.each {|a| n+=a}
  return n
end

def add_s(array)
    #Add an "s" to each word in the array except for the 2nd element in the array (FAILED - 9)
    i = 0
    while i < array.length
      if i != 1
        array[i] = "#{array[i]}s"
      end
      i+=1
    end
    return array
end

