def fib(number)

  index = 0
  arr = [0,1]

  while index+2 < number
      arr << arr[index] + arr [index+1]
      index +=1
  end

    return arr
end

puts fib(6)
puts fib(100).last == 218922995834555169026

#BUBBLE SORT
#iterate through array, comparing current index to next index, swapping if next index is less than current index
#do this until you get to the next to the last index
#repeat the whole process until no swaps are made

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

some_array = [8,9,2,1,21]
puts "array before bubble sort #{some_array}"

bubble_sort(some_array)

puts "array after bubble sort #{some_array}"