def merge_sort(arr)
    
end

data = []
101.times do
    x = rand(101)
    if !data.any?(x)
        data << x
    end
end
data.shuffle

merge_sort(data)
