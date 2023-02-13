# Assignment 1

# Iterative Version
def fibs(n)
    arr = []
    i = 0
    until i == n
        if i == 0
            arr << 0
        elsif i == 1
            arr << 1
        elsif i > 1
            arr << arr[i-1] + arr[i - 2]
        end
        i += 1
    end
    arr
end

# Recursive Version - so extensive because need to put it into an array, similarly to the iterative version
def fibs_rec(n)
    if n < 0
        return
    elsif n == 0
        arr = []
    elsif n == 1
        arr = [0]
    elsif n == 2
        arr = [0,1]
    elsif n > 2
        arr = fibs_rec(n - 1)
        arr << arr[-1] + arr[-2]
    end
end

p fibs(8)
p fibs_rec(8)
