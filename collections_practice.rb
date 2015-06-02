


def sort_array_asc (array)
  array.sort
end

def sort_array_desc (array)
  array.sort!
  array.reverse!

end

def swap_elements (a)
  a[1],a[2]=a[2],a[1]
  return a
end

def reverse_array(array)
  array.reverse!
end

def kesha_maker(array)
  for i in 0..array.length-1
    if array[i].length>2
      array[i][2]='$'
    end
  end
  return array
end

def greater_and_less_than_10 (array)

  num = Hash.new
  num= {"greater_than_10" => [] , "less_than_10"=> []}

  for i in 0..array.length-1
    if array[i]>10
      num["greater_than_10"] << array[i]
    else
      num["less_than_10"] << array[i]
    end
  end
  return num

end

def find_winners(hashes)
 array=[]
 hashes.each do |key,string| 
  if string == "winner"
    array << key
  end
 end
 return array
end


def find_a (array)
  awords=[]
  array.each do |string|
    if string.start_with?("a")
      awords << string
    end
  end
  return awords
end

def sum_array(array)
  sum=0
  array.each do |num|
    sum=sum+num
  end
  return sum
end

def add_s(array)
  sarray=[]
  for i in 0..array.length-1
    if i!=1
      sarray << array[i]+"s"
    else
      sarray << array[i]
    end
  end
  return sarray
end







def count_words(astory)

  organizedarray=astory.split(" ") 
  # there is a word for every index  organizedarray[0]=the ..etc 
  # control d for refactor rename
  wordcount= Hash.new

  organizedarray.each do |word|
    if wordcount.has_key?(word)==true
      wordcount[word]+=1
    else
      wordcount[word]=1
    end
  end
  return wordcount
end





def organize_songs_by_artist(array)
  songhash=Hash.new


  array.each do |string|
    s=string.split(" - ")
    if songhash.has_key?(s[0])
      songhash[s[0]] = songhash[s[0]] << s[1]
    else
      ary=Array.new
      ary[0]=s[1]
      songhash[s[0]] = ary
    end
  end
  return songhash
end


































