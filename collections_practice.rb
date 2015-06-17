require 'pry'
require 'pry-nav'
def sort_array_asc(array)
	array.sort! {|x,y|x <=> y}
end
def sort_array_desc(array)
	array.sort! {|x,y|y <=> x}
end
def swap_elements(array)
	elem = array[1]
	array[1] = array[2]
	array[2] = elem
	array
end
def reverse_array(array)
	array.reverse
end
def kesha_maker(array)
	array.collect do |str|
		str = str.split('')
		str[2] = "$"
		str = str.join('')
	end
end
def greater_and_less_than_10(array)
	greater = []
	lesser = []
	array.each do |x|
		if x > 10
			greater.push(x)
		elsif x < 10
			lesser.push(x)
		end	
	end
	result = Hash.new
	result["greater_than_10"] = greater
	result["less_than_10"] = lesser
	result
end
def find_winners(list)
	names = Array.new
	winners = list.select{|key, hash| hash["winner"]}
	winners.each do |key, hash|
		names.push(key)
	end
	names
end
def find_a(array)
	array.select{|str| str=~/^[aA]/}
end
def sum_array(array)
	sum = 0
	array.each do |x|
		sum += x
	end
	sum
end
def add_s(array)
	array.each_with_index do |x, index|
		if index != 1
			x = x << "s"
		end
	end
	array
end
def count_words(string)
	string = string.split(' ')
	unique_words = string.uniq
	count = Hash[unique_words.map{|x| [x, string.count(x)]}]
	count
end
def organize_songs_by_artist(array)
	artists = []								# an array to hold the unique artists
	artist_songs = []							# an array to hold each artist's songs 
    organized = Hash.new    					# a hash to hold the organized tracklist
    array.each_with_index do |str, index|
        array[index] = str.split(' - ')
        artists.push(array[index][0])
    end
    artists = artists.uniq

	artists.each do |artist|
		array.each do |song|
			if song[0] == artist
				artist_songs.push(song[1])
			end
		end
		organized[artist] = artist_songs
		artist_songs = []
	end
	organized
	
end
   
