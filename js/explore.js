/*
1.put string in variable
2.make string an array
3.pop a character off the end of the array, then push that character back into the beginning of the array
4.do that for the length of the original string
*/

function reverse_me(str){
  var input_string = str
  var arr_of_string = input_string.split("")
  var reverse_arr = []
  var reverse_of_string = null

  for (i = 0; i < str.length; i++){

    last_char = arr_of_string.pop()

    // console.log("last character: " +last_char)

    reverse_arr[i] = last_char

    // console.log(reverse_of_string)

    reverse_of_string = reverse_arr.join('')


  }

      console.log("your reversed string is: " + reverse_of_string)

}

reverse_me("hello")
