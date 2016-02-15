/*Pseucode: Define two objects, the objective of both objects is two try and guess the random number. The first player will have a gold property and depending on the result it will minus 5 or plus 10. If the guessed number is higher or lower than the actual result substract 5 to player.goldm and if equal add 16 to player.gold.
Have a conditional check for when the gold is either greater than 15 or less than -15. The first case will print to the cosole "You have won!" the latter "You have lost!".

Have another object with another function that takes a number and checks if the number is euqal to te randomly generated number, if so, the player guesses correctly they win 500 gold, if they don't they lose 1000 gold.
*/


//First choose if you want to be a risky or normal player. If you choose risky choose once a number between 1 and 5 and run the code. If you are a normal player write down 5 call to the guess function and run the code. If you guess correctly you get 16 point, but that will not be enough because your incorrect guesses wil take away 5 gold. You can repeat a number as a guess.

var player = {
gold: 0,
random: Math.floor((Math.random()*5)+1),
guess: function(num) {
  if(num === player.random){
    console.log("You guessed the number! you get 10 gold")
    player.gold +=16;
    console.log(player.gold);
  }
  else if(num > player.random){
    console.log("too high, you lose 5 gold!");
    player.gold -=5;
    console.log(player.gold);
  }
  else if(num < player.random){
    console.log("too low, you lose 5 gold!");
    player.gold -=5;
    console.log(player.gold);
  }
  if(player.gold > 15){
    console.log("You have won!");
  }
  else if(player.gold < -15){
    console.log("You have lost!");
  }
}
}
  var riskyPlayer = {
random: Math.floor((Math.random()*5)+1),
gold: 0,
guess: function(num) {
  if(num === player.random){
    riskyPlayer.gold += 500,
    console.log("you have won a fortune!");
    console.log (riskyPlayer.gold);
  }
  else if(num != player.random){
    riskyPlayer.gold -= 1000,
    console.log("your gambling habit has left you in great debt, shame!");
    console.log(riskyPlayer.gold);
  } 
}
};  

riskyPlayer.guess(3)

player.guess(5)
player.guess(4)
player.guess(3)
player.guess(3)
player.guess(3)