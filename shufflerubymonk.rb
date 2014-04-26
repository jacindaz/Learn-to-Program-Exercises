=begin

Ruby Monk - Number shuffle problem
Jacinda Zhong
Friday, April 25, 2014

=end


#-------------------SWAP 2 #'s BY INDEX---------------------------
def swappyByIndex(swap_num, swap_index1, swap_index2)
  str_swap_num = swap_num.to_s
  num1 = str_swap_num[swap_index1]
  num2 = str_swap_num[swap_index2]

  str_swap_num[swap_index1] = num2
  str_swap_num[swap_index2] = num1
  swapped_num = str_swap_num.to_i
  return swapped_num
end

#-------------------CHANGE 1st #---------------------------
def firstNumSwappy(swap_num1, swap_index)
  str_swap_num1 = swap_num1.to_s
  first_num = str_swap_num1[0]
  swap_num = str_swap_num1[swap_index]
  #puts "1st \#: #{first_num}, 2nd\: #{swap_num}"

  swapped_num = str_swap_num1
  swapped_num[0] = swap_num
  swapped_num[swap_index] = first_num
  swapped_num = swapped_num.to_i
  #puts "1st num swapped\: #{swapped_num}"

  return swapped_num
end

#-------------------SWAP LAST two #'s----------------------
def innerSwappy(swap_num)
  str_swap_num = swap_num.to_s
  last_digit = str_swap_num[-1]
  second_last_digit = str_swap_num[-2]

  str_swap_num[-1] = second_last_digit
  str_swap_num[-2] = last_digit
  swapped_num = str_swap_num.to_i
  return swapped_num
end

#-------------------CALLING innerSwappy----------------------
def swapLastTwo(final_array)
  iterate = 0
  while iterate < 3
    final_array << innerSwappy(final_array[iterate])
    iterate += 1
    #puts "Final array: #{final_array}, iteration: #{iterate}"
  end
end

#-------------------CALCULATE FACTORIAL----------------------
def calcFactorial(num_to_fac)
  factorial = 1
  num_to_fac.times do
    factorial *= num_to_fac
    num_to_fac -= 1
  end
  return factorial
end


#-------------------COMBINING ALL SWAP METHODS----------------------
def number_shuffle(number)
  final_array = [number]
  number = number.to_s
  length = number.length

  #swap the first digit in number-----------------------------------
  while length > 1
    swapped = firstNumSwappy(number, length - 1)
    #puts "I swapped something: #{swapped}"
    final_array << swapped
    #puts "This is the array: #{final_array}, length: #{length}"
    length -= 1
  end

  #puts "Final array: #{final_array}"

  #swap inner digits dependant on length of #------------------------
  if number.length === 3
    swapLastTwo(final_array)
    puts "Length 3: #{final_array}"
    return final_array
  elsif number.length == 4
    while_iterate = 0
    while while_iterate < 4
      #puts "Length 4 while loop"
      final_array << innerSwappy(final_array[while_iterate])
      final_array << swappyByIndex(final_array[while_iterate], 1, 2)
      final_array << innerSwappy(final_array[-1])
      #puts "Swapped index 1,2: #{final_array}"
      final_array << swappyByIndex(final_array[while_iterate], 1, 3)
      final_array << innerSwappy(final_array[-1])
      #puts "Swapped index 1,3: #{final_array}"
      while_iterate += 1
      #puts "Length 4 array: #{final_array}, iteration: #{while_iterate}, array-length: #{final_array.length}"
    end
    #puts "Length 4: #{final_array}"
    return final_array
  else
    puts "Error!"
  end

end


#-------------------FINAL METHOD WITH ALL SWAPS----------------------
def checks(number)

  #check to make sure have correct # of shuffled digits
  if final_array.length == calcFactorial(number)
    return final_array
  elsif #are there repeats in the final array??
    return final_array.uniq
  else
    puts "Sorry, that is not correct!"
end
