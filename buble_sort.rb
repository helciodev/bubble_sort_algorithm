def bubble_sort(arr)
  len = arr.length - 1
  len.times do
    arr.each_with_index do |value, index|
      if index < len && value > arr[index + 1]
        arr[index] = arr[index + 1]
        arr[index + 1] = value
      end
    end
  end
  arr
end

p bubble_sort([6, 4, 3, 1, 2, 3, 0])

def bubble_sort_by(arr)
  len = arr.length - 1

  len.times do
    arr.each_with_index do |value, index|
      next unless index < len

      sort = yield(value, arr[index + 1])
      if sort.positive?
        arr[index] = arr[index + 1]
        arr[index + 1] = value
      end
    end
  end
  arr
end

p bubble_sort_by(%w[dances hello hi oi]) { |left, right| left.length - right.length }
