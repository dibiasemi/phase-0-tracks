# # Search an array using the .each method
#   def search_array(array,search)
#     index = nil
#     counter = 0
#     array.each { |integer|
#       if integer == search
#           index =  counter
#         break
#       end
#       counter += 1
#     }
#     return index
#   end
# # Search an array using the .length method
#   def search_array(array,search)
#     index = nil
#     length = array.length
#     0.upto(length) {|x|
#       if array[x] == search
#         index = x
#       end
#     }
#     return index
#   end
# # Example array from Release 0
# array = [42, 89, 23, 1]
# puts "array = #{array}"

# index_of_number = search_array(array,1)
#   puts "The imteger 1 in the array has an index of:"
#   p index_of_number

# index_of_number = search_array(array,24)
#   puts "The integer 24 in the array has an index of:"
#   p index_of_number


def fibonacci(terms)
  array = []
  terms.times { |counter|
    if counter <2
      array << counter
    else
      array << array[-1] + array[-2]
    end
  }
  array
end

p fibonacci(6)

verify = fibonacci(100)[-1] == 218922995834555169026
puts "Our method works successfully and fibonacci(100) = 218922995834555169026 is #{verify}"

