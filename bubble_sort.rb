
def bubble_sort (arr)
  n = arr.length

  loop do
  swapped = false
   (n-1).times do |i|
    if arr [i] > arr[i+1]
            arr[i], arr[i + 1] = arr[i + 1], arr[i]
       end
       break if not swapped
     end
  end
end




bubble_sort([4,3,78,2,0,2])
