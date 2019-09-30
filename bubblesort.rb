def bubblesort(arr)
    is_sorted = false
    last_unsorted = arr.length - 1
    while is_sorted == false
        is_sorted = true
        i = 0
        for i in 0..(arr.length - 2) do
            if (arr[i]>arr[i+1])
                arr[i], arr[i+1] = arr[i+1], arr[i]
                is_sorted = false
            end
        end
        last_unsorted -= 1
    end
    puts arr
end

bubblesort([32, 34, 324, 23, 123, 6, 345, 12, 45, 23, 6456, 234, 234])

bubble_sort_by