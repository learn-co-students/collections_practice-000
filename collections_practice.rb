def sort_array_asc(integers)
  integers.sort
end

def sort_array_desc(integers)
  integers.sort {|x, y| y <=> x}
end
  
def swap_elements(array)
 array[0],array[1], array[2] = array[0], array[2], array[1]
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each  do |x|
    x[2] = "$"  
  end
end

def greater_and_less_than_10(array)

  h = Hash.new
  h["greater_than_10"] = []
  h["less_than_10"] = []

  array.each do |x|

    if x > 10
      h["greater_than_10"] << x
    elsif x < 10
      h["less_than_10"] << x
    else
      x == 10
    end
  end
  h
end

def find_winners(array)

  winners = []

  array.each do |key, value|
    if value == "winner"
      winners << key
    end
  end
  winners
end

def find_a(array)
  hash = []

  array.each do |x|
    if x.start_with?("a") == true
      hash << x
    end
  end
  hash
end

def sum_array(array)
  sum = 0

  array.inject { |sum, x| sum + x  }
end

def add_s(array)
  
  array.each_with_index do |x, i|
    if i != 1
      x << "s"
    end
  end
end

def count_words(story)
  words = story.split(" ")
  story_count = Hash.new(0)
  words.each do |x|
    story_count[x] += 1
  end
  story_count
end

def organize_songs_by_artist(array)
  array.each_with_object({}) do |str, hash|
    parts = str.split(" - ")
    hash.has_key?(parts.first) ? hash[parts.first] << parts.last : hash[parts.first] = [parts.last]  
  end
end