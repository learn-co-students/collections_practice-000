 def sort_array_asc(arr)
  arr.sort
end

 def sort_array_desc(arr)
  arr.sort.reverse
end

def swap_elements(arr)
  new_array = arr.clone
  new_array[1] = arr[2]
  new_array[2] = arr[1]

  return new_array
end

def reverse_array(arr)
  arr.reverse
end

def kesha_maker(arr)
  arr.each do |i|
    i[2] = '$'
  end  
end

def greater_and_less_than_10(arr)
  new_hash = Hash.new
  new_hash["greater_than_10"] = []
  new_hash["less_than_10"] = []
  arr.each do |i|
    if i < 10
      new_hash["less_than_10"] << i
    else 
      new_hash["greater_than_10"] << i
    end
  end
  new_hash
end

def find_winners(wlhash)
  winners = []
  wlhash.each do |i,value|
    if value == "winner"
      winners << i
    end
  end  
  winners
end

def find_a(arr)
  new_array = []
  arr.each do |obj|
    if obj.start_with?("a") == true
      new_array << obj
    end  
  end
  new_array
end


def sum_array(arr)
  sum = 0
  arr.each do |i|
    sum += i
  end  
  return sum
end  

def add_s(arr)
  new_array = []
  arr.each_with_index do |obj,i|
    if i != 1
      obj << "s"
    end
  end
end

def count_words(arr)
  h = Hash.new(0)
  arr.split(' ').each{|i|h[i]+=1}
  h
end

def organize_songs_by_artist(arr)
  new_hash = Hash.new {|hash, key| hash[key] = Array.new}
  arr.each do |x|
  new_hash[x.split(" - ")[0]] << x.split(" - ")[1]
  end
  new_hash
end


