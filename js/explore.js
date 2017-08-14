// function that takes a string as a parameter and reverses the string.

function reverse(string) {
  var new_string = "";
  // loop through the string and display each letter starting at the last index
  //  where i-- decrements
  for (var i = string.length - 1; i >= 0; i--) {
  // shovel or copy each letter/character into the string "new_string"
    (new_string += string[i]);
  }
  return new_string;
}

//driver code
var reversed_word = reverse("Hello");
if (true) {
  console.log(reversed_word);
}