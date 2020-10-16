def bubble_sort(arr)
  n = arr.length

  loop do
    swapped = false

    (n - 1).times do |i|
      if n[i] > n[i + 1]
        n[i], n[i + 1] = n[i + 1], n[i]
        swapped = true
      end
    end

    break unless swapped
  end

  n
end

p bubble_sort([4, 3, 78, 2, 0, 2, 40, 8, 9, 5, 6])

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

puts bubble_sort_by(%w[hello hi hey how howde well howsit]) { |a, b| a.length - b.length }
