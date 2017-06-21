# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}




def staircase(n)
  new_hash = Hash.new
  1.upto n do |odd_item|
    value_array = Array.new
    if odd_item.odd?
      (1..odd_item).each {|even_item| value_array << even_item if even_item.even?}
      new_hash[odd_item]=value_array
    end
  end
  return new_hash  
end
