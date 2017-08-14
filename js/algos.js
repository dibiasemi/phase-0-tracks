// Release 0: Find the Longest Phrase

var sandwhich = ['peanut butter', 'jelly', 'bread'];

sandwhich.sort(function(a, b) {
  return a.length - b.length
});

//Release 1: Find a Key-Value Match
// write a function that takes two objects and checks to see if the objects share at least one key-value pair.

var person1 = {name: "Steven", age: 54}
var person2 = {name: "Tamir", age: 54}

function equal(a,b) {
  if (Object.is(a["name"], b["name"]) || Object.is(a["age"], b["age"])){
    return true
  } else {
    return false
  }
}
//Driver code
// console.log(equal(person1,person2))

// Release 2: Generate Random Test Data

