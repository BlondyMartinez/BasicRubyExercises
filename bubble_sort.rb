# frozen_string_literal: true

def bubble_sort(arr)
  last_index = arr.length - 1

  (0..last_index).each do |i|
    (0..last_index).each do |j|
      next if arr[j] > arr[i]

      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp
    end
  end

  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
