def sort_array_asc(array)
  array.sort do |x, y|
    x <=> y
  end
end

def sort_array_desc(array)
  array.sort do |x, y|
    y <=> x
  end
end

def swap_elements(array)
  array[0], array[1], array[2] = array[0], array[2], array[1]
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each do |x|
    x[2] = "$"
  end
end

def greater_and_less_than_10 (array)
  h = Hash.new
  h["greater_than_10"] = []
  h["less_than_10"] = []

  array.each do |x|
    if x < 10
      h["less_than_10"] << x
    else
      h["greater_than_10"] << x
    end
  end
  h
end

def find_winners(hash)
  win = []
  hash.each do |key, value|
    if value == "winner"
      win << key
    end
  end
  win
end

def find_a(array)
  a = []
  array.each do |x|
    if x[0] == "a"
      a << x
    end
  end
  a
end

def sum_array(array)
  sum = 0
  array.inject {|sum, x| sum + x}
end

def add_s(array)
arr = []
  array.each_with_index do |x, y| #diff btwn each and each with index?
    if y != 1
      x << "s"
    end
  end
end

def count_words(story)
  words = story.split(" ")
  frequency = Hash.new(0)
  words.each do |x|
    frequency[x] += 1
  end
  frequency
end

def organize_songs_by_artist(jam)
  mus_hash = Hash.new do |artist, song|
    artist[song] = Array.new
  end
    jam.each do |x|
    mus_hash[x.split(" - ")[0]] << x.split(" - ")[1]
    end
    mus_hash
end
















