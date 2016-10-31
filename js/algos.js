/*
RELEASE 0
function that takes array and returns longest element - no required array length for input

1. iterate through array, acting on length of each element
2. create and set a flag to true (initially it's true just to start the iteration, but from then on this flag will be used to indicate if the new array has been modified or not)
3. set a loop to iterate through the array, swapping elements positions if the element in focus is greater than the next element.  If is found that the element is greater than the next element, then the modification flag should switch to true.  This loop should continue to perform this function until the the flag is false.
4. return the last element of the newly sorted array.
*/

function find_longest(arr){
  var new_arr = []
  var swap_happened = true

  while(swap_happened){

    for(index = 0; index < arr.length - 1; index++){

      if(arr[index].length > arr[index + 1].length){

        var_moving_backward = arr[index + 1]
        var_moving_forward = arr[index]
        arr[index] = var_moving_backward
        arr[index + 1] = var_moving_forward
        swap_happened = true
        // console.log("something was swapped")

      }
      else{

        swap_happened = false
        // console.log("nothing was swapped")

      }
    }
  }

    console.log(arr[arr.length-1])
    return arr[arr.length-1]

}

//DRIVER CODE
var cat_behaviors = ["scratch", "bite", "eat", "run", "jump around like crazy", "purr because you just ate"]
find_longest(cat_behaviors)