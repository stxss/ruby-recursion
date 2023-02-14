# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.size < 2

  merged = []

  left = arr.slice!(0, arr.length / 2)
  right = arr

  left_sort = merge_sort(left)
  right_sort = merge_sort(right)

  until left_sort.empty? || right_sort.empty?
    merged << if left_sort.first <= right_sort.first
                left_sort.shift
              else
                right_sort.shift
              end

  end
  merged + left_sort + right_sort
end

data = []
101.times do
  x = rand(101)
  data << x unless data.any?(x)
end
data.shuffle

p merge_sort(data)
