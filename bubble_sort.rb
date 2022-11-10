def bubble_sort(numbers)
    swapped = true
    length = numbers.length - 1
    
    until !swapped do
        swapped = false
        for i in 1..length
            if numbers[i - 1] > numbers[i]
                numbers[i], numbers[i - 1] = numbers[i - 1], numbers[i]
                swapped = true
            end
        end
    end
    numbers
end

print bubble_sort([4,3,78,2,0,2])