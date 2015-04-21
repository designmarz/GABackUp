##Descriptions of Iterators

###Instructions
Below you will find a list of methods. In the space provided below each, please provide a brief description of what this method does based upon your review of the Docs. 

###Array methods:
May be helpful to look in [Enumerable](http://ruby-doc.org/core-2.2.0/Enumerable.html) as well...

####select:
Returns an Array containing all the matching elements from the block(the options????).


####reject:
The opposite effect select, returning an array that does not match the block(option??).

####map:
Returns a new array, after running the block over each element in your array.

####detect:
Returns the first result that the block <i>is not false</i>.

####inject:
Combines all the elements in an array and returns the sum.

####partition:
Returns two arrays, with the first matching the passed condition, and the second containing the rest of the array.

####sort:
Returns an array sorted by the default method, or a by using the results of the supplied block.

####one?:
Returns true if exactly (1) item in an array meets the set conditions, if more then 1 or no items meet then returns false.

####none:
Returns true only if the passed array contains none of the condition.

####all:
Returns true if all the items in an array meet the set conditions.

####empty?:
Returns true only if the item passed to it is empty BUT NOT NIL.

####eql?:
Compares 2 arrays and returns true if they are the same, other wise returns false.

####include?:
Returns true if the passed parameter is in the checked (arr in this case).

####nil?:
Checks to see if the object is ONLY nil

###Hash methods:

####key?:
Checked to see if the passed key is in the array object.

####keys:
Returns the keys for the object.

####delete:
Deletes key passed and returns the value that was deleted.

####delete_if:
Deletes the passed  value or key and returns what key/value pairs are left.