def sort_array_asc(arr)
  arr.sort {|x,y| x <=> y}
end

def sort_array_desc(arr)
  arr.sort {|x,y| y <=> x}
end

def swap_elements(arr)
  arr[1], arr[2] = arr[2], arr[1]
  arr
end

def reverse_array(arr)
  arr.reverse
end

def kesha_maker(arr)
  arr.each do |el|
    el[2] = "$"
    el
  end
end

def greater_and_less_than_10(arr)
  greater_than_10 = arr.select { |num| num > 10 }
  less_than_10 = arr.select { |num| num < 10}
  hash = {}
  hash["greater_than_10"] = greater_than_10
  hash["less_than_10"] = less_than_10
  hash
end

def find_winners(hash)
  winners = []
  hash.each do |key, value|
    if value == "winner"
      winners << key
    end
  end
  winners
end

def find_a(arr)
  arr.select do |word|
    word.start_with? "a"
  end
end

def sum_array(arr)
  sum = 0
  arr.each do |num|
    sum += num
  end
  sum
end

def add_s(arr)
  set = arr.each_with_index.collect do |word, index|
    if index == 1
      word
    else
      word << "s"
    end
  end
end

def count_words(story)
    hash = {}
    story.split.each do |word| 
      hash["#{word}"] ||= 0
      hash["#{word}"] += 1
    end
    hash
end

def organize_songs_by_artist(jams)
  hash = {}
  jams.each do |jam|
    split_jam = jam.split(' - ')
    band = split_jam[0]
    song = split_jam[1]
    hash[band] ||= []
    hash[band] << song
  end
  hash
end


