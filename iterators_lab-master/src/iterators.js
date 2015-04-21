var Iterators = {
  // tripler() should accept an array of numbers as a parameter and
  // return an array of those numbers multipled by 3. For example,
  // - tripler([1,2,3]) should return [3,6,9], and
  // - tripler([7,50,4]) should return [21,150,12].
  // Use `map` to accomplish this.
  tripler: function (numbers) {
    return numbers.map(function(num) {
      return num * 3;
    });
  },

  // perfectSquares() should take an array of numbers as a parameter
  // and return an array that contains only the numbers from the
  // argument that have whole numbers as their square roots. For
  // example,
  // - perfectSquares([1,2,3]) should return [1], and
  // - perfectSquares([4,5,6]) should return [4], and
  // - perfectSquares([1,4,9]) should return [1,4,9].
  // Use `filter` to accomplish this.
  perfectSquares: function (numbers) {
    return numbers.filter(function (num) {
      var sqrt = Math.sqrt(num);
      return sqrt == Math.round(sqrt);
    });
  },

  // product() should accept an array of numbers as a parameter
  // and return the product of multiplying all those numbers together.
  // For example,
  // - product([1,2,3]) should return 6, and
  // - product([0,1,2]) should return 0, and
  // - product([100,200,300]) should return 6000000.
  // Use `reduce` to accomplish this.
  product: function (numbers) {
    return numbers.reduce(function(prev, cur){
     return prev * cur; 
   });
  },

  // hasInstructor() accepts an array of names and should return true
  // if the array contains the name of an instructor ("Tim", "Elie",
  // or "Alex"). Note: this should be case insensitive, meaning it
  // should return true if the list contains either "Alex" or "alex".
  // For example,
  // - hasInstructor(["bob", "joe", "jen"]) should return false,
  // - hasInstructor(["bob", "tim", "jen"]) should return true,
  // - hasInstructor(["Bob", "Tim", "Jen"]) should return true.
  // Use `some` to accomplish this.
  // Hint: see `toLowerCase`, it could be useful.
  hasInstructor: function (names) {
  },

  // allSamePlayer() should accept an array of players, represented by
  // X's and O's. The players array may also contain empty spots, which
  // are neither an X nor an O. The function should return true if the
  // array is comprised of all Xs or all Os, and false otherwise.
  // For example,
  // - allSamePlayer(["X","X","X"]) should return true,
  // - allSamePlayer(["X","O","X"]) should return false,
  // - allSamePlayer(["O","O","O"]) should return true,
  // - allSamePlayer(["X","_","X"]) should return false,
  // - allSamePlayer(["_","_","_"]) should return false.
  // Use `every` to accomplish this.
  allSamePlayer: function (players) {
  },

  // Also not an iterator metheod, necessarily. devowel() takes a
  // string as a parameter and returns the same string with all of the
  // vowels removed. There are several ways to do this. One involves
  // Regular Expressions, but we haven't talked about those and they
  // can be tricky. Another involves converting the string into an
  // array (check out the .split() and .join() string methods) and
  // then using filter(). There are probably other solutions as well,
  // so solve as best you can.
  // As an example:
  // - devowel("What's up?") should return "Wht's p?",
  // - devowel("Howdy") should return "Hwdy",
  // - devowel("Phone's ringing, dude.") should return "Phn's rngng, dd.".
  devowel: function (text) {
  }
};

module.exports = Iterators;
