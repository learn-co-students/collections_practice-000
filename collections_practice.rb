def sort_array_asc(array)
  #v.1
  #array.sort
  
  #v.2 (own sort: using insertions)
  n = array.size
  return array if n < 2

  (2..n).each do |i| 
    k = i-1
	#puts "k: #{k}; a[k]: #{array[k]}; a[k-1]: #{array[k-1]}"
    while k > 0 && array[k] < array[k-1]
      tmp = array[k]
      array[k] = array[k-1]
      array[k-1] = tmp
      k -= 1
    end
  end
  array  
end

def sort_array_desc(array)
  #v.1
  #array.sort { |a, b| if a > b then -1 elsif a == b then 0 else 1 end }
  
  #v.2 (only for numbers)
  array.sort_by { |element| -element }
end

#a = [4, 3, 7, 1]
#sort_array_asc(a)

def swap_elements(array)
  return nil if array.size < 3
  tmp = array[1]
  array[1] = array[2]
  array[2] = tmp
  return array
end  

def swap_elements_from_to(array, index, dest_index)
  size = array.size
  return nil if index > size - 1 || dest_index > size - 1
  return array if index == dest_index
  part1 = []
  part2 = []
  
  array.each_with_index do |element, i|
    if i != index then
	  if index < dest_index then 
	    i <= dest_index ? part1 << element : part2 << element
	  else
	    i < dest_index ? part1 << element : part2 << element
      end	  
    end	  
  end
  
#  puts part1.inspect
#  puts part2.inspect
  
  return [part1, array[index], part2].flatten
end

#a = [0, 1, 2, 3, 4]
#b = swap_elements_from_to(a, 2, 5)
#puts b.inspect

def reverse_array(array)
  #v.1
  #array.reverse
  
  #v.2
  #array.sort do |a, b| 
  #  ind_a = array.index(a)
  #  ind_b = array.index(b)
  #  if ind_a > ind_b then 
  #    - 1
  #  elsif ind_a == ind_b then
  #    0
  #  else 
  #    1
  #  end
  #end

  #v.3
  new_array = [] 
  array.each { |element| new_array.unshift(element) }  
  return new_array
end

def kesha_maker(array)
  array.each { |element| element[2] = '$' }
end

def greater_and_less_than_10(array)
  #v.1
  #hash = { "greater_than_10" => [], "less_than_10" => [] }
  #array.each do |element|
  #  element < 10 ? hash["less_than_10"] << element : hash["greater_than_10"] << element
  #end
  #hash
  
  #v.2
  hash = { "greater_than_10" => array.select { |element| element > 10 }, "less_than_10" => array.select { |element| element < 10 } }  
end

def find_winners(hash)
  hash.select { |k, v| v == "winner" }.keys
end

def find_a(array)
  array.select { |e| e.start_with? 'a' }
end

def sum_array(array)
  array.reduce(:+)
end

def add_s(array)
  #v.1
  #array.map { |e| array.index(e) == 1 ? e : e.concat('s') }
  
  #v.2
  array.each_with_index.map { |e, i| i == 1 ? e : e.concat('s') }
end

def count_words(story)
  #v.1 
  #hash = Hash.new(0)
  #story.split.each { |word| hash[word] += 1 }
  #hash
  
  #v.2
  story.split.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 } 
end

def organize_songs_by_artist(array)
  array.each_with_object({}) do |str, hash|
    parts = str.split(" - ")
	hash.has_key?(parts.first) ? hash[parts.first] << parts.last : hash[parts.first] = [parts.last]
  end
end
