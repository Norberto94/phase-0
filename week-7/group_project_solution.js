// could not find a different way of doing the sum solution
// that I could really say I fully understood and this one is
// neat and short enough anyway, but I did refactor mean and median
function sum(array) {
    var total = 0;
    for (var i = 0; i < array.length; i++){
        total = total + array[i]
    }
    return total
}
//test code next line
console.log(sum([5,7,8]))
//refactored mean solution
function mean(array){
  var total = 0;
  for (var i = 0; i < array.length; i++){
    total += array[i];
    var avg = total / array.length;
  }
  console.log(avg)
}
//test code next line
console.log(mean([90,100]))
//console.log(mean([1,2,3]));
/*function median(array){
    var sort = array.sort();
    if (sort.length % 2 == 1){
        var median = sort[Math.floor(sort.length/2)];
        return median;
    }
    else {
        var new_array = [];
        var index = Math.floor(sort.length/2);
        new_array.push(array[index]);
        new_array.push(array[index-1]);
        return new_array;
    }
}*/
//refactored median solution
function median(array) {
    array.sort( function(a,b) {return a - b;} );
    var half = Math.floor(array.length/2);
    if(array.length % 2 == 1)
        return array[half];
    else
        return (array[half-1] + array[half]) / 2.0;
}
//test code next line
console.log(median([1,3,4,5,6,7,9]));
console.log(median([1,4,16,20]));

/* Reflection:

I could not find a way to simplify the way that my fellow group members solver the problem
but I did find shorter ways and in my opinion, more understandable way to solve the problem, especially
for the mean function. It was fun to see how even the simpler problems have differetnt ways
of being solved.


*/