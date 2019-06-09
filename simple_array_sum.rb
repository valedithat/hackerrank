
# Given an array of integers, find the sum of its elements.
# For example, if the array , , so return .
# Complete the simpleArraySum function in the editor below. It must return the sum of the array elements as an integer.
# simpleArraySum has the following parameter(s):
#    ar: an array of integers
# The first line contains an integer, , denoting the size of the array.
# The second line contains space-separated integers representing the array's elements.
# 
# Output Format
#
# Print the sum of the array's elements as a single integer.
#
# Sample Input
#
# 6
# 1 2 3 4 10 11
# 
# Sample Output
# 
# 31


def simpleArraySum(ar)
    count = 0
    ar.each {|x| count += x}
    count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = simpleArraySum ar

fptr.write result
fptr.write "\n"

fptr.close()
