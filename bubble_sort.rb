def bubble_sort(arr)
  n = arr.length

  loop do
    swapped = false

    (n - 1).times do |i|
      if arr [i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end

    break unless swapped
  end

  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(arr)
  loop do
    swapped = false
    (arr.length - 1).times do |j|
      if yield(arr[j], arr[j + 1]).positive?
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

puts bubble_sort_by(%w[hello hi howdie howsit hey]) { |a, b| a.length - b.length }
