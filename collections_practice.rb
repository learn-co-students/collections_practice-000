def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort_by {|i| -i}
end

def swap_elements(array)
  this = array.delete_at(1)
  array.insert(2, this)
end

def reverse_array(array)
  arrayNew = Array.new
  array.each do |item|
    arrayNew.unshift(item)
  end
  return arrayNew
end

def kesha_maker(array)
  arrayFinal = array.collect { |word| word.insert(2, "$") }
  arrayFinal = array.collect { |word| word.slice!(0, 3) + word.slice(1, 100) } 
  return arrayFinal
end

def greater_and_less_than_10(array)
  newHash = { "greater_than_10" => [], "less_than_10" => [] }
  arrayLength = array.length
  until arrayLength == 0
    array.each do |number|
      if number > 10
      newHash["greater_than_10"].push(number)
      else
        newHash["less_than_10"].push(number)
       arrayLength -= 1
      end
    end
    return newHash
  end
end

def find_winners(hash)
  array = Array.new
  hashLength = hash.length
  until hashLength == 0
    hash.each do |key, value|
      if value == "winner"
        array.push(key)
      end
      hashLength -= 1
    end
    return array
  end
end

def find_a(array)
 array.select { |word|  word.start_with?("a")  }
end

def sum_array(array)
  total = 0
  array.each do |num|
    total += num
  end
  return total
end

def add_s(array)
  addBack = array.delete_at(1)
  array2 = array.collect { |word| word + "s" }
  array2 = array2.insert(1, addBack)
end

def count_words(str)
str.split.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
end

#words.each { |word| wf[word] += 1 }

def organize_songs_by_artist(array)
  newHash = Hash.new(0)
  array = array.collect {|array| array.split(" - ")}
  array.collect { |array| 
    if newHash.has_key?(array[0]) == false
    newHash[array[0]] = [array[1]]
    else
      newHash[array[0]] += [array[1]]
    end }
  return newHash
end









