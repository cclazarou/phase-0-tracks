
//RELEASE 0 PSEUDOCODE
/* function that takes array and returns longest element - no required array length for input

1. iterate through array, acting on length of each element
2. create a flag to indicate if array has been modified during steps 6.  Initialize to true to start iteration.
3. create a flag to indicate if all elements are the same length.  This flag should set to true when elements have different lengths. Initialize to true.
4. iterate through array, checking if each element is the same length.  If so, change in step 3 to false.
5. if all elements are the same length, print "all elements are the same length. function will return last element of array" and skip steps 6.  Otherwise...
6. set a loop to iterate through the array, swapping elements positions if the element in focus is greater than the next element.  If is found that the element is greater than the next element, then the modification flag (see step 2) should switch to true.  This loop should continue to perform this function until the the flag is false.
7. return the last element of the newly sorted array. */

//RELEASE 0 CODE
function find_longest(arr){
  var swap_happened = true;
  var all_elements_not_same_length = true;

  for(i = 0; i < arr.length-2; i++){

    if(arr[i] == arr[i+1]){
      all_elements_not_same_length = false;
      // console.log("found elements that are the same length");
    }
    else{
      all_elements_not_same_length = true;
    }
  }

  if(all_elements_not_same_length){
    while(swap_happened){

      for(index = 0; index < arr.length - 1; index++){

        if(arr[index].length > arr[index + 1].length){

          var_moving_backward = arr[index + 1];
          var_moving_forward = arr[index];
          arr[index] = var_moving_backward;
          arr[index + 1] = var_moving_forward;
          swap_happened = true;
          // console.log("swap happened this pass")

        }
        else{
          swap_happened = false;
          // console.log ("swap didn't happen this pass")
        }
      }
    }
  }
  else{
    console.log("All elements are the same length.  Function will return last element.");
  }

    console.log(arr[arr.length-1]);
    return arr[arr.length-1];

}

//RELEASE 1 PSEUDOCODE
/* function that takes two objects and returns true if they share at least one key value pair
1. set a flag to indicate that a match was found.  initialize to false.
2. iterate through object 1's array
3. on each pass, compare the object 1 array element to each of the object 2 array elements using another (nested) iteration
4. if a match is found, set flag to true, then break from iteration
5. if flag is true (meaning a match has been found), then return true.
6. if flag is false (meaning a match was not found during iteration through object 1's key value pairs), then return false
*/

//RELEASE 1 CODE
function found_match_in_objects(object1,object2){

  var match_found = false;
  //omit because .entries in not part of core js
  // object1_arr = Object.entries(object1);
  // object2_arr = Object.entries(object2);

    for(obj1_key in object1){

      for(obj2_key in object2){

        if(object1[obj1_key] == object2[obj2_key] && obj1_key == obj2_key){

          match_found = true;
          break;
        }
      }
      if(match_found == true){

        console.log("break from outermost loop");
        break;
      }
    }

// omit because .entries is not part of core js
//     for (i = 0; i < object1_arr.length; i++){
//       object1_pair = object1_arr[i];

//         for(index = 0; index < object2_arr.length; i++){
//           if(object1_pair == object2_arr[i]){
//             match_found = true;
//             console.log("we're breaking from the innermost for loop because we found a match")
//             break;
//           }
//         }

//       if(match_found == true){
//         console.log("we're breaking from the outermost for loop because we found a match")
//         break;
//       }
//     }

    if(match_found == true){

      console.log("we found a match at the end check!")
      return true;
    }
    else{

      console.log("we didn't find a match at the end check")
      return false;
    }
}



//RELEASE 2 PSEUDOCODE
/* function that takes a length and returns an array with that many elements; each element is a random word between 1 and 10 letters (inclusive).
1. create an empty array
2. adding elements to the main array: create a loop that iterates the number of times given as the array length
3. on each pass, add an element to the array
    - to add an element to the array, create a nested loop
    - within the nested loop, generate a random number between 1 and 10 (inclusive) - this number gives the length of the word being added on this pass
    - generate a random character a-z(inclusive) on each pass of this nested loop. add this character to the direct parent array (the "word")
      - to generate a random character, create an array of the alphabet
      - generate a random number between 0 and the length of the alphabet array minus 1
      - find the element in the alphabet array at that number in the index; that is
        your random character
    - when exiting this nested loop, join the characters to form a word at that index in the main array
4. return the main array */

//RELEASE 2 CODE
function generate_array(length){

  test_data = [];

  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min;

}

//RELEASE 2 DRIVER CODE

generate_array(2)

// //RELEASE 0 DRIVER CODE
// var cat_behaviors = ["scratch", "bite", "eat", "run", "jump around like crazy", "purr because you just ate"];
// find_longest(cat_behaviors);

// var imaginary_words = ["whatwhat", "wha", "whatwhatwhatwhat", "whatt", "whatwhatwhatwhatwhatwhatwhatwhatwhatwhatwhatwhat", "wh"];
// find_longest(imaginary_words);

// var corner_case_1 = ["same", "same", "same", "same", "same"];
// find_longest(corner_case_1);

// var corner_case_2 = ["same", "same", "notsame", "same", "same"];
// find_longest(corner_case_2);

// //RELEASE 1 DRIVER CODE
// var candace_lazarou = {
//   age: 33, hair: "black", favorite_food: "nutella"
// };

// var tina_lazarou = {
//   age: 53, hair: "black", favorite_food: "lumpia"
// };

// found_match_in_objects(candace_lazarou,tina_lazarou)

// var apple = {size: "small", cost: 300, mood: "cheerful", exists: true}
// var banana = {size: "large", cost: 600, voice: "frightened", exists: false}

// found_match_in_objects(apple,banana)