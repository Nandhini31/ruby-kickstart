# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false
#
# def got_three?(my_array)
#
#
#   my_array.each_with_index do |element, index|
#     if element == my_array[index+1] && my_array[index + 1] == my_array[index + 2]
#
#       return true
#     end
#     false
#   end
# end

def got_three?(my_array)
  my_array.each_cons 3 do |a,b,c|
    if a == b && b == c
        return true
    end
    false
  end
end
