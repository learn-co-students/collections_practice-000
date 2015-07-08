def sort_array_asc(array)
  n = array.length
  loop do
    swapped = false 
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

def sort_array_desc(array)
   n = array.length
  loop do
    swapped = false 
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array.reverse
end

def swap_elements(array)
  x = array.delete_at(1)
  array.insert(2, x)
end

def swap_elements_from_to(array,index,destination_index)
  x = array.delete_at(index)
  array.insert(destination_index, x)
end

def reverse_array(array)
  reversed = Array.new
  array.length.times { reversed << array.pop }
  reversed
end

def kesha_maker(array)
  array.collect! {|x| 
    x.slice!(2)
    x.insert(2, "$")
  }
end

def greater_and_less_than_10(array)
  hash = {"greater_than_10" => [], "less_than_10" => []}
  hash["greater_than_10"] = array.select {|x| x>10}
  hash["less_than_10"] = array.select {|x| x<10}
  hash
end

def find_winners(hash)
  winners = hash.select {|x,y| y=="winner"}
  winners.keys
end

def find_a(array)
  array.select {|x| x.start_with? "a"}
end

def sum_array(array)
  array.reduce(:+)
end

def add_s(array)
  array.each_with_index.collect{|element, index| 
    if index != 1
      element<<"s"
    else
      element
    end
  }
end

def count_words(string)
  words = string.split
  frequencies = Hash.new(0)
  words.each { |word| frequencies[word] += 1 }
  frequencies
end

def organize_songs_by_artist(array)
  new_array = []
  new_array = array.each.collect {|x| 
    x.split(" - ")
  }
  new_array.each_with_object({}) { |(v1,v2),h|  
    h.update(v1=>[v2]) {|k,ov,nv| 
      ov+nv
    }
  }  
end






