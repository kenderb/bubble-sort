#!/usr/bin/ruby

require 'pry'


def bubble_sort(array)
  array_length = array.length

  return array if array_length <= 1

  swap = true

  while swap
    swap = false
    (array_length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = true
      end
    end
  end

  return array

end


p bubble_sort([8, 6, 9, 1, 21])


def bubble_sort_by(block)
  block_length = block.length
  return block if block_length <= 1
  swap = true
  while swap
    swap = false
    (block_length - 1).times do |i|
      sorted_block = yield(block[i], block[i + 1])
      if sorted_block.positive?
        block[i] , block[i + 1] = block[i + 1],block[i]
      end
    end
  end

  return block

end

p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length } 