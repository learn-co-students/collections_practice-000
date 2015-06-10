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

def swap_elements_from_to(array, index, destination_index)
    array[index], array[destination_index] = array[destination_index], array[index]
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    array.each do |kesha_letter|
        kesha_letter[2] = "$"
    end
end

def greater_and_less_than_10(array)
    sorted_hash = Hash.new
    sorted_hash["greater_than_10"] = [ ]
    sorted_hash["less_than_10"] = [ ]
    array.each do |num|
        if num > 10
            sorted_hash["greater_than_10"] << num
        else num < 10
            sorted_hash["less_than_10"] << num
        end
    end
    sorted_hash
end

def find_winners(hash)
    winner_array = [ ]
    hash.each do |name, value|
        if value == "winner"
            winner_array << name
        end
    end
    winner_array
end

def find_a(array)
    a_array = [ ]
    array.each do |string|
        if string.start_with?('a')
            a_array << string
        end
    end
    a_array
end
















