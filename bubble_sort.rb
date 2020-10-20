#!/usr/bin/ruby
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