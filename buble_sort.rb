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
