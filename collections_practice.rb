def sort_array_asc nums
  nums.sort
end

def sort_array_desc nums
  nums.sort {|a, b| b <=> a}
end

def sort_array_char_count words
  words.sort {|a, b| a.length <=> b.length}
end

def swap_elements words
  new_words = [words[0], words[2], words[1]]
end

def reverse_array words
  words.reverse
end

def kesha_maker names
  names.each {|name| name[2] = '$'}
end

def find_a words
  words.select {|word| word.start_with?('a') }
end

def sum_array nums
  nums.inject(0){|sum, num| sum += num}
end

def add_s words
  words.collect do |word|
    if word != 'feet'
      word << 's'
    else
      word
    end
  end
end
