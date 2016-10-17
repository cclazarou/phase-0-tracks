#1. split string into two strings delimited by whitespace, then put in array
# .split(' ')
#2. create vowel array (unless there's one built into String), then increment each vowel in each word to next in array
#(was not able to increment to next vowel, so just manipulated along with consonants)
# .succ
#3. increment each consonant in array to next consonant in alphabet (does not require creation of alphabet array)
# .succ (see above)

def name_arrayer(real_name)
  fake_name = real_name.split(' ')
  return fake_name
end

def letter_incrementer(array)
  array.each do |word|

    letters = word.split('')
    letters.each do |letter|
      letter.succ!
    end

    joined_letters = letters.join
    puts joined_letters

  end

end

def name_joiner(arr)
  arr[0] << " "
  arr.join
end

# name_arrayer("Candace Lazarou")

puts letter_incrementer(["Candace","Lazarou"])



