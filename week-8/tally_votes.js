// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Alivia Blount
// This challenge took me [lost count] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob",
           vicePresident: "Devin",
           secretary: "Gail",
           treasurer: "Kerry" },

  "Bob": { president: "Mary",
          vicePresident: "Hermann",
          secretary: "Fred",
          treasurer: "Ivy" },

  "Cindy": { president: "Cindy",
            vicePresident: "Hermann",
            secretary: "Bob",
            treasurer: "Bob" },

  "Devin": { president: "Louise",
            vicePresident: "John",
            secretary: "Bob",
            treasurer: "Fred" },

  "Ernest": { president: "Fred",
             vicePresident: "Hermann",
             secretary: "Fred",
             treasurer: "Ivy" },

  "Fred": { president: "Louise",
           vicePresident: "Alex",
           secretary: "Ivy",
           treasurer: "Ivy" },

  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
};

var voteCount = {


  president: {},

  vicePresident: {},

  secretary: {},

  treasurer: {}

};

var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined,
}

for (var voter in votes) {
  var slate = votes[voter]
  for(var office in slate) {
    var officer = slate[office]
     if (voteCount[office][officer]) {
       voteCount[office][officer] += 1;
     }
    else {
      voteCount[office][officer] = 1;
    }
  }
}

function countTheVotes(voteCount) {
 for (var officerTally in voteCount) {
   var maxVal = null;
   var finalPositionVoteCount = voteCount[officerTally];
   //console.log(finalPositionVoteCount); 
   for (var person in finalPositionVoteCount) {
     if(maxVal === null) {
       maxVal = person;
     } else if (finalPositionVoteCount[maxVal] < finalPositionVoteCount[person]) {
       maxVal = person;
     }
      //console.log(maxVal);
       console.log(person)
   }
 } 
}

function assignOfficers(president, vicepresident, secretary, treasurer) {
    officers.president = president;
    officers.vicePresident = vicepresident;
    officers.secretary = secretary;
    officers.treasurer = treasurer;
};
  
assignOfficers("Louise", "Hermann", "Fred", "Ivy");
countTheVotes(voteCount);

/*Reflection:

What did you learn about iterating over nested objects in JavaScript?

I learned how to access deeply nested data with for in loops.

Were you able to find useful methods to help you with this?

We did used basic logic to solver the problem, no real need for any fancy built in method.

What concepts were solidified in the process of working through this challenge?

I feel much more comfortable with for in loops now.

*/


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)