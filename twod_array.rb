#!/bin/ruby

require 'json'
require 'stringio'

# Complete the hourglassSum function below.
def hourglassSum(arr)
  # hash, arr into rows 1-6, 6 columns each
  hash = Hash.new()
  6.times do |i|
    hash[i] = arr[0..5]
    arr.shift(6)
  end

  hash.keys.each do |key|
    hash[key].values.each do |value|

    end
  end

  # hour_glass_sums = []

  hash[0] start at 0, hour_glass_sum[0] +1, end at 2, then hash[0] next, until reach hash[0][-1]
  hash[1] start at 1, end at -2
  hash[2] start at 0, end at -1

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr = Array.new(6)

6.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = hourglassSum arr

fptr.write result
fptr.write "\n"

fptr.close()
