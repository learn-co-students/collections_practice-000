def sort_array_asc(arr1)
	arr1.sort do |a, b|
    	a<=>b
	end
end

def sort_array_desc(arr2)
arr2.sort do |a, b|
	if a == b
   	0
	elsif a > b
 	 -1
	elsif a < b
  	1
	end
  end
end

def sort_array_char_count(arr3)
	arr3.sort do |a, b|
       if a.length == b.length
         0
	  elsif a.length < b.length
        -1
     elsif a.length > b.length
        1
     end
  end
end

def swap_elements(arr4)
  arr4[1], arr4[2] = arr4[2], arr4[1]
  arr4
end

def reverse_array(arr5)
  i = arr5.length - 1
  reverse=[]
   arr5.each do
      reverse << arr5[i]
  	i-=1
	end
	reverse
end

def kesha_maker(arr6)
  arr6.each do |x|
	 if x.length >= 3
 	  x[2]= "$"
   end
  end
  arr6
end

def find_a(arr7)
  arr7.select do |x|
   x.start_with?("a")
 end
end

def sum_array(arr8)
  arr8.inject(0) {|res,el| res + el}
end

def add_s(arr9)
  arr9.each_with_index.collect do |element, index|
    if index != 1
     element + "s"
    else
     element
    end
 end
end
