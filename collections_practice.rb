require 'pry'

def sort_array_asc(asc)
	asc.sort
end

def sort_array_desc(desc)
	desc.sort.reverse
end

def swap_elements(swap)
	swap[1], swap[2] = swap[2], swap[1]
	swap
end

def reverse_array(reverse)
	reverse.reverse
end

def kesha_maker(kesha)
	# .split/ does not work on array but .collect calls on each individual STRING inside of the array 
	kesha.collect do |x|
		x = x.split("")
		x[2] = "$"
		x = x.join("")
	end
end

def greater_and_less_than_10(array)
	hash = {}
	hash["greater_than_10"] = []
	hash["less_than_10"] = []
	
	array.each do |x|
		if x > 10
			hash["greater_than_10"] << x
		else x < 10
			hash["less_than_10"] << x
		end
	end
	hash
end

def find_winners(hash)
	flatiron = []

	winner = hash.select {|key, value| value }
		winner.each do |key, value|
			if value == "winner"
		 	flatiron << key
		    end
		end
		
		 flatiron
end	

def find_a(array)
	a_list =
	array.select do |x|
		if x[0] == "a"
			a_list = x
		end
	end
		a_list	
end

def sum_array(integers)
	total = 0
	integers.each do |x|
		total = total + x
	end
	total
end

def add_s(array)
	a = Array.new
	i = 1

	array.each do |item|
		if i == 2
		  a << item
		else
		  a << item + "s"
	    end
	      i+=1
	end
	a
end

def count_words(story)
	word = story.split(" ")
	count = Hash.new(0)
	word.each do |x|
		count[x] += 1
	end
	count

end


def organize_songs_by_artist(song_database)
	organize_songs= {}

	song_database.each do |artist_songs_combo|
		song_collection = artist_songs_combo.split(" - ")
		artist = song_collection[0] 
		song = song_collection[1]
		organize_songs[artist] = [] unless organize_songs[artist]
		binding.pry
		
		organize_songs[artist] << song

	end
	organize_songs
end























































