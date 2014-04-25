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
  puts "1st \#: #{first_num}, 2nd\: #{swap_num}"

  swapped_num = str_swap_num1
  swapped_num[0] = swap_num
  swapped_num[swap_index] = first_num
  swapped_num = swapped_num.to_i
  puts "1st num swapped\: #{swapped_num}"

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
    puts "Final array: #{final_array}, iteration: #{iterate}"
  end
  return final_array
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
