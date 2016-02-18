
def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a,b|
    b <=> a
  end
end

def sort_array_char_count(array)
  array.sort { | a,b | a.length <=> b.length }

end

def swap_elements(array)
  swap = array[1]
  array[1] = array[2]
  array[2] = swap
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  new = []
    array.each do | element |
      element[2] = "$"
      new << element
  end
  new
end


def find_a(array)
  new = []
  array.each do | word |
    if word[0] == "a"
      new << word
  end
  end
  new
end

def sum_array(array)
  array.inject{ | sum, x | sum + x }
end

def add_s(array)
  array.each do | word |
    if array[1] == word
      word
    else
    word << "s"
    end
  end
end