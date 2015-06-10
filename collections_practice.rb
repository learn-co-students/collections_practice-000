def sort_array_asc(integers)
    integers.sort
end

def sort_array_desc(integers)
    integers.sort do |x, y|
        y <=> x
    end
end

def swap_elements(array)
    array[0], array[1], array[2] = array[0], array[2], array [1]
end

def swap_elements_from_to(array, index, destination_index)
    array[index], array[destination_index] = array[destination_index], array[index]
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    array.each do |kesha_letter|
        kesha_letter[2] = "$"
    end
end

def greater_and_less_than_10(array)
    sorted_hash = Hash.new
    sorted_hash["greater_than_10"] = [ ]
    sorted_hash["less_than_10"] = [ ]
    array.each do |num|
        if num > 10
            sorted_hash["greater_than_10"] << num
        else num < 10
            sorted_hash["less_than_10"] << num
        end
    end
    sorted_hash
end

def find_winners(hash)
    winner_array = [ ]
    hash.each do |name, value|
        if value == "winner"
            winner_array << name
        end
    end
    winner_array
end

def find_a(array)
    a_array = [ ]
    array.each do |string|
        if string.start_with?('a')
            a_array << string
        end
    end
    a_array
end

def sum_array(array)
    array.inject do |sum, num|
        sum = sum + num
    end
end

def add_s(array)
    array.each_with_index.collect do |element, index|
        if element[index] != element[1]
            element << "s"
        else element[index] = element[1]
            element
        end
    end
end

def count_words(story)
    story_count = Hash.new
    story.each_line do |line|
        words = line.split
            words.each do |word|
                if story_count.has_key?(word)
                story_count[word] = story_count[word] + 1
                else
                    story_count[word] = 1
                end
            end
    end
    story_count
end

def organize_songs_by_artist(jams)
    jams_hash= Hash.new do |artist, song| 
        artist[song] = Array.new
    end
    jams.each do |artist_song_pair|
        jams_hash[artist_song_pair.split(" - ")[0]] << artist_song_pair.split(" - ")[1]
    end
    jams_hash
end







