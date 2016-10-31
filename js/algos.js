/*
RELEASE 0
function that takes array and returns longest element - no indication of array length

1. iterate through array
2. at each element, count number of characters
3. store those numbers in an array that is accessible outside of the iteration (note: you could do this by just calculating the length of the current words/phrases in focus in the original array, but I think it would be slightly less efficient depending upon how many words/phrases you had to sort)
4. create and set a flag to false (this flag will be used to indicate if the new array has been modified or not, which will let the loop in step 5 know it can stop)
5. set a loop to iterate through the new array, swapping elements positions if the element in focus is greater than the next element.  If is found that the element is greater than the next element, then the mod flag should switch to true.  This loop should continue to perform this function until the the flag is false.
6. return the element at index 0 of the newly sorted array.
*/

function find_longest(arr){
  arr
}