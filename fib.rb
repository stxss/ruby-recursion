# frozen_string_literal: true

# Assignment 1

# Iterative Version
def fibs(n)
  arr = []
  i = 0
  until i == n
    if i.zero?
      arr << 0
    elsif i == 1
      arr << 1
    elsif i > 1
      arr << arr[i - 1] + arr[i - 2]
    end
    i += 1
  end
  arr
end

# Recursive Version - so extensive because need to put it into an array, similarly to the iterative version
def fibs_rec(n)
  if n.negative?
    nil
  elsif n.zero?
    []
  elsif n == 1
    [0]
  elsif n == 2
    [0, 1]
  elsif n > 2
    arr = fibs_rec(n - 1)
    arr << arr[-1] + arr[-2]
  end
end

p fibs(8)
p fibs_rec(8)
