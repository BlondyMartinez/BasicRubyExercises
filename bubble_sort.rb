def bubble_sort(arr)
  last_index = arr.length - 1
  
  for i in 0..last_index do
    for j in 0..last_index do
      next if arr[j] > arr[i]
      
      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp
    end
  end
  
  arr
end

p bubble_sort([4,3,78,2,0,2])