def sort_array_asc input_data
input_data.sort 
end

def sort_array_desc input_data
  input_data.sort { |a,b| b <=> a}
end

def sort_array_char_count input_data
  input_data.sort {|a,b| a.length <=> b.length }
end

def swap_elements input_data
  input_data[1], input_data[2] = input_data[2] ,input_data[1]
  input_data
end

def reverse_array input_data
  input_data.reverse
end

def kesha_maker input_data
  input_data.each do |stuff|
    stuff[2] = "$"
    input_data
  end
end

def find_a input_data
  input_data.select do |stuff|
    stuff.start_with?("a")
  end
end

def sum_array input_data
  total = 0
  input_data.each do |stuff|
    total += stuff
  end
  total
end

def add_s input_data
  input_data.each_with_index.collect do |stuff, index|
    if index == 1
      stuff
    else
      stuff << "s"
    end
  end
end



