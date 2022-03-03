#! rspec ./../tests/5-array-sum.rb

#
 # Sums all integers in a nested array, no matter how many levels deep.
 # @param {Array} startOfTree An array containing other arrays, ints, strings..
 # @returns {Number} The sum of all integers contained in the input, at any level.
#
def array_sum(start_of_tree)
 array1 = start_of_tree.select {|element| element.class == Fixnum}
  if array1.length == start_of_tree.length
   return start_of_tree.sum
  elsif
   array = start_of_tree.flatten!
   int_array = array.select {|element| element.class == Fixnum}
   return int_array.sum
  end
end
