def non_duplicated_values(values)
  
  non_dupes = []
  
  #sort through the given array to put all numbers in order
  values.sort!
  
  #loop through entire array and if the item isn't the same as the item before and the item after, it is not a dupe
  #then save this value into a new array of non-duplicates
  values.each do |i|
    if (i != values[values.index(i) - 1]) && (i != values[values.index(i) + 1])
      non_dupes << i
    end
  end
    
   return non_dupes
  
end
