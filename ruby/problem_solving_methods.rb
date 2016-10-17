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

