def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort {|a,b| b<=>a}
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each {|x| 
    x.slice!(2)
    x.insert(2, "$")
  }
end

def greater_and_less_than_10(array)
  hash = {"greater_than_10" => [], "less_than_10" => []}
  array.each {|x|
    if x<10
      hash["less_than_10"]<<x
    else
      hash["greater_than_10"]<<x
    end
  }
  hash
end

def greater_and_less_than_10(array)
  hash = {"greater_than_10" => [], "less_than_10" => []}
  hash["greater_than_10"] = array.select {|x| x>10}
  hash["less_than_10"] = array.select {|x| x<10}
  hash


def find_winners(hash)
  array=[]
  hash.each {|x,y| 
    if y == "winner"
      array<<x
    end
  }
  array
end

def find_winners(hash)
  winners = hash.select {|x,y| y=="winner"}
  winners.keys
end

def organize_songs_by_artist(array)
  hash = Hash.new {} |artist, song|
    artist[song] = Array.new 
  }
  array.collect {|x| x.split(" - ")
    k=0
    if array[k][0]

  }
end

  new_array = []
  new_array = array.each.collect {|x| 
    x.split(" - ")
  }
  new_array.each_with_object({}) {|(v1,v2),h|
    h.update(v1=>v2) {|k,v3,v4| 
      v3.is_a?(Array) ? v3<<v4 : [v3, v4]
    }
  }

    array.each_with_object({}) {|string,h| 
    string.split(" - ") {|v1, v2|
      h[v1] = [v2]
    }
  }