def sort_array_asc(array)
	array.sort 
end

def sort_array_desc(array)
	array.sort {|x,y| y <=> x }
end

def swap_elements(array)
	array.values_at(0, 2, 1)
end

def reverse_array(array)
	array.reverse
end

def kesha_maker(array)
	array.to_s
	array.join(" ")
	array.collect {|x| x[2] = "$"}
	array.join(" ")
	array.to_a
end

def greater_and_less_than_10(array)
	has = Hash.new
	
	has["greater_than_10"] = []
	
	has["less_than_10"] = []

	arr = array.collect do |x| 
		if x > 10 
			has["greater_than_10" ] << x
		else x < 10
			has["less_than_10" ] << x 
		end
	
	end

	has

end

def find_winners(hash)
	hash.delete_if {|key, value| value == "loser" }
	hash.keys
end

def find_a(array)
	array.select {|x| x[0] == "a" }
end


def sum_array(array)
	array.inject {|a, b| a + b }
end

def add_s(array)
	array.each_with_index.collect do |ele, index|
		if index == 1 
			ele
		else
			ele + "s"
		end
	end
end

def count_words(array)
	empty_hash = Hash.new(0) 
	array.split(" ").each do |x|
		empty_hash[x] += 1
	end
	empty_hash
end

def organize_songs_by_artist(array)
	lead = Hash.new
	array.each do |x|
		seperate = x.split(" - ")
		artist = seperate[0]
		track = seperate[1]
		lead[artist] ||= []
		lead[artist] << track
	end
	lead
end