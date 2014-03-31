=begin 
Jacinda Zhong
Chris Pine's Learn to Program
Chapter 10, Page 90

Shuffle. Now that you’ve finished your new sorting algorithm, how
about the opposite? Write a shuffle method that takes an array and
returns a totally shuffled version. As always, you’ll want to test it,
but testing this one is trickier: How can you test to make sure you
are getting a perfect shuffle? What would you even say a perfect
shuffle would be? Now test for it.
=end


# new_array = shuffle_array.shuffle
# puts new_array


def shuffleArray(array_name)

	#chose to only shuffle 75% of the array items, this was arbitrary decision
	#choose 75% bc at some point you'll start shuffling items that have already been shuffled
	num_items_to_shuffle = (array_name.length / 4) * 3

	while (num_items_to_shuffle > 0)

		#random number part 1
		random_index1 = rand(array_name.length)				
		temp_arrayValue_arrayIndex = [array_name[random_index1], random_index1]
		#puts "This is array1 #{temp_arrayValue_arrayIndex}"


		#random number part 2
		random_index2 = rand(array_name.length)
		temp_arrayValue2_arrayIndex2 = [array_name[random_index2], random_index2]
		#puts "This is array2 #{temp_arrayValue2_arrayIndex2}"

		#swap index values in the array (using the temporary storage array)
		#index of array1 = value of array2 (index swapped w/ value of another temp array)
		array_name[random_index1] = array_name[random_index2]

		#need to use temp_arrayValue_arrayIndex array (instead of just array_name[random_index1])
		#because already swapped the value
		array_name[random_index2] = temp_arrayValue_arrayIndex[0]
		puts "This is the #{num_items_to_shuffle} iteration of #{array_name}"

		#array_name[random_num] = 
		num_items_to_shuffle -= 1

	end
end

#------------------------TEST CASES---------------------
shuffle_array = [1,2,3,4,5,6,7,8,9,10, "a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
shuffleArray(shuffle_array)

num_array = [1, 2, 4, 6, 8, 10]
#shuffleArray(num_array)

alpha_array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
#shuffleArray(alpha_array)

name_array = ["jacinda", 'yvan', 'marissa', 'girly', 'mommy', 'dad']
#shuffleArray(name_array)


=begin 

RANDOM THOUGHTS:

	- binary search
	- go through 3/4 of the array, choosing the array_item randomly
	- randomly assign array_item a new array_index

=end