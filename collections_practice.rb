def sort_array_asc(integers)
    integers.sort
end

def sort_array_desc(integers)
    integers.sort do |x, y|
        y <=> x
    end
end

def swap_elements(array)
    array[0], array[1], array[2] = array[0], array[2], array [1]
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    array.each do |kesha_letter|
        kesha_letter[2] = "$"
    end
end

