def bubble_sort_by(arr)
    is_sorted = false
    last_unsorted = arr.length - 1
    while is_sorted == false
        is_sorted = true
        i = 0
        for i in 0..(arr.length - 2) do
            if (yield(arr[i], arr[i + 1]) > 0)
                arr[i], arr[i+1] = arr[i+1], arr[i]
                is_sorted = false
            end
        end
    end
    puts arr
end

bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
    left.length - right.length
end
