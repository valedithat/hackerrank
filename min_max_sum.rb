

require 'json'
require 'stringio'

def miniMaxSum(arr)
	min_sum = arr.sort.shift(4).reduce(:+)
	max_sum = arr.sort.pop(4).reduces(:+)
	puts #{min_sum} #{max_sum}"
end

arr = gets.rstrip.split(' ').map(&:to_i)

miniMaxSum arr
