#!/bin/ruby

require 'json'
require 'stringio'
require 'pry'

# Complete the countSwaps function below.
def countSwaps(a)
  @swap_count = 0
  a = go_sort_the_array(a) unless a == a.sort

  # if a == a.sort # array is the array sorted?
    puts "Array is sorted in #{@swap_count} swaps."
    puts "First Element: #{a[0]}"
    puts "Last Element: #{a[-1]}"
  # else
  # end
end

def go_sort_the_array(a)
  # take first two of the array
  # bubble = a.each_cons(2) do |i|
  #   i.minmax && count += 1 if i != i.sort
  #   go_sort_the_array(bubble, count)
  # end
  derp = a.map.with_index do |num, index|
    # binding.pry
    return if index == (a.length-1)

    if a[index+1] < num
      num, a[index+1] = a[index+1], num
      @swap_count += 1
    end
  end

  #.flatten!

  # is highest i?
    # yes: go to next
    # no:
      # make i next_i, make next_i i
      # go_sort_the_array(a(with_swapped_i_and_next), count+=1)
  return derp
end





n = gets.to_i
a = gets.rstrip.split(' ').map(&:to_i)
countSwaps a
