# John works at a clothing store. He has a large pile of socks that he must pair by color for sale. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
#
# For example, there are socks with colors . There is one pair of color and one of color . There are three odd socks left, one of each color. The number of pairs is .
#
# Function Description
#
# Complete the sockMerchant function in the editor below. It must return an integer representing the number of matching pairs of socks that are available.
#
# sockMerchant has the following parameter(s):
#
#     n: the number of socks in the pile
#     ar: the colors of each sock
#
# Input Format
#
# The first line contains an integer , the number of socks represented in .
# The second line contains space-separated integers describing the colors of the socks in the pile.
#
# Constraints
#
#     where
#
# Output Format
#
# Return the total number of matching pairs of socks that John can sell.
#
# Sample Input
#
# 9
# 10 20 20 10 10 30 50 10 20
#
# Sample Output
#
# 3

require 'json'
require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(n, ar)
    return unless Integer(n) && ar.length == n
    count = 0
    ar.group_by(&:itself).each do |key, value|
        next if value.count <= 1
        value.drop(1) if value.count.odd?
        count += value.count/2
    end
    count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = sockMerchant n, ar

fptr.write result
fptr.write "\n"

fptr.close()
