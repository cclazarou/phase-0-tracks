#1. split string into two strings delimited by whitespace, then put in array
# .split(' ')
#2. create vowel array (unless there's one built into String), then increment each vowel in each word to next in array
#(was not able to increment to next vowel, so just manipulated along with consonants)
# .succ
#3. increment each consonant in array to next consonant in alphabet (does not require creation of alphabet array)
# .succ (see above)

# def name_arrayer(real_name)
#   fake_name = real_name.split(' ')
#   return fake_name
# end

def alias_maker(real_name)
  real_name = real_name.split(' ')
  new_name = Array.new
  single_word_changed = "test"

  real_name.each do |single_word|
    letters = single_word.split('')
    letters.each do |single_letter|
      single_letter.succ!
    end
    single_word_changed = letters.join
    single_word_changed << " "
    new_name << single_word_changed
  end

  new_name = new_name.join
  new_name = new_name.chop

  puts new_name

end

puts alias_maker("Candace Lazarou")



