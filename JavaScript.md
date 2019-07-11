# JavaScript

## Useful Methods

| Method                                                                                   | Definition                                                                                                                                                                                                       | Link                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `parseInt`(Value, radix)                                                                 | Accept the string and convert it into an integer                                                                                                                                                                 | [geeksforgeeks](https://www.geeksforgeeks.org/javascript-parseint-with-examples/) |
| num.`toString`(base)                                                                     | Used with a number and converts the number to a string                                                                                                                                                           | [geeksforgeeks](https://www.geeksforgeeks.org/javascript-tostring-function/)      |
| Math.`random`()                                                                          | Return a floating-point pseudo-random number between range [0,1) , 0 (inclusive) and 1 (exclusive)                                                                                                               | [geeksforgeeks](https://www.geeksforgeeks.org/javascript-math-random-function/)   |
| array1.`concat`(array2, array3, ..., arrayX)                                             | Used to join two or more arrays                                                                                                                                                                                  | [w3s](https://www.w3schools.com/jsref/jsref_concat_array.asp)                     |
| array.`fill`("value")                                                                    | Fills the specified elements in an array with a static value                                                                                                                                                     | [w3s](https://www.w3schools.com/jsref/jsref_fill.asp)                             |
| var a = fruits.`indexOf`("Apple");                                                       | Searches the array for the specified item, and returns its position. Returns -1 if the item is not found.If the item is present more than once, the indexOf method returns the position of the first occurrence. | [w3s](https://www.w3schools.com/jsref/jsref_indexof_array.asp)                    |
| array.`pop`()'                                                                           | Removes the last element of an array, and returns that element                                                                                                                                                   | [w3s](https://www.w3schools.com/jsref/jsref_pop.asp)                              |
| array.`push`("value");                                                                   | Adds new items to the end of an array, and returns the new length. The new item(s) will be added at the end of the array.                                                                                        | [w3s](https://www.w3schools.com/jsref/jsref_push.asp)                             |
| array.`reverse`();                                                                       | Reverses the order of the elements in an array                                                                                                                                                                   | [w3s](https://www.w3schools.com/jsref/jsref_reverse.asp)                          |
| array.`shift`()                                                                          | Removes the first item of an array. this method changes the length of the array. The return value of the shift method is the removed item                                                                        | [w3s](https://www.w3schools.com/jsref/jsref_shift.asp)                            |
| var a = array.`slice`(1, 3);                                                             | Returns the selected elements in an array, as a new array object. Selects the elements starting at the given start argument, and ends at, but does not include, the given end argument.                          | [w3s](https://www.w3schools.com/jsref/jsref_slice_array.asp)                      |
| array.`sort`();                                                                          | Sorts the items of an array (alphabetic/numeric, ascending/descending)                                                                                                                                           | [w3s](https://www.w3schools.com/jsref/jsref_sort.asp)                             |
| array.`splice`( index, remove_count, item_list )                                         | Modify the contents of an array by removing the existing elements and/or by adding new elements.                                                                                                                 | [geeksforgeeks](https://www.geeksforgeeks.org/javascript-array-splice-method/)    |
| array.`unshift`("item1", "item2")                                                        | Adds new items to the beginning of an array, returns the new length                                                                                                                                              | [w3s](https://www.w3schools.com/jsref/jsref_unshift.asp)                          |
| var d = new Date();<br>var n = d.`getDate`();                                            | Returns the day of the month (from 1 to 31) for the specified date                                                                                                                                               | [w3s](https://www.w3schools.com/jsref/jsref_getdate.asp)                          |
| var n = Date.`now`();                                                                    | Returns the number of milliseconds since January 1, 1970 00:00:00 UTC                                                                                                                                            | [w3s](https://www.w3schools.com/jsref/jsref_now.asp)                              |
| Math.`abs`(-299)                                                                         | Returns the absolute value of a number                                                                                                                                                                           | [w3s](https://www.w3schools.com/jsref/jsref_abs.asp)                              |
| Math.`ceil`(1.4)<br>> 2                                                                  | Rounds a number upwards to the nearest integer, and returns the result                                                                                                                                           | [w3s](https://www.w3schools.com/jsref/jsref_ceil.asp)                             |
| Math.`floor`(1.6)<br>> 1                                                                 | Rounds a number downwards to the nearest integer, and returns the result                                                                                                                                         | [w3s](https://www.w3schools.com/jsref/jsref_floor.asp)                            |
| Math.`max`(val1, val2);                                                                  | Returns the number with the highest value                                                                                                                                                                        | [w3s](https://www.w3schools.com/jsref/jsref_max.asp)                              |
| Math.`min`(val1, val2);                                                                  | Returns the number with the lowest value                                                                                                                                                                         | [w3s](https://www.w3schools.com/jsref/jsref_min.asp)                              |
| Math.`pow`(int, exponent)                                                                | Returns the value of x to the power of y                                                                                                                                                                         | [w3s](https://www.w3schools.com/jsref/jsref_pow.asp)                              |
| Math.`round`(val);                                                                       | Rounds a number to the nearest integer                                                                                                                                                                           | [w3s](https://www.w3schools.com/jsref/jsref_round.asp)                            |
| Math.`trunc`(val);                                                                       | Returns the integer part of a number                                                                                                                                                                             | [w3s](https://www.w3schools.com/jsref/jsref_trunc.asp)                            |
| Number.`isFinite`(123) //true                                                            | Determines whether a value is a finite number                                                                                                                                                                    | [w3s](https://www.w3schools.com/jsref/jsref_isfinite_number.asp)                  |
| Number.`isInteger`(Infinity) //false                                                     | Determines whether a value is an integer                                                                                                                                                                         | [w3s](https://www.w3schools.com/jsref/jsref_isinteger.asp)                        |
| Number.`isNaN`(0) //false                                                                | Determines whether a value is NaN (Not-A-Number)                                                                                                                                                                 | [w3s](https://www.w3schools.com/jsref/jsref_isnan_number.asp)                     |
| var num = 5.56789;<br>var n = num.`toFixed`(2);                                          | Converts a number into a string, keeping a specified number of decimals                                                                                                                                          | [w3s](https://www.w3schools.com/jsref/jsref_tofixed.asp)                          |
| var str = "We are free";<br>var patt = new `RegExp`("e");<br>var res = patt.`test`(str); | Tests for a match in a string (in this case, search the string for 'e')                                                                                                                                          | [w3s](https://www.w3schools.com/jsref/jsref_regexp_test.asp)  [Regex](Regex.md)   |
| var str = "HELLO";<br>var res = str.`charAt`(0);                                         | Returns the character at the specified index in a string                                                                                                                                                         | [w3s](https://www.w3schools.com/jsref/jsref_charat.asp)                           |
| var str1 = "Hello ";<br>var str2 = "world!";<br>var res = str1.`concat`(str2);           | Join two or more strings                                                                                                                                                                                         | [w3s](https://www.w3schools.com/jsref/jsref_concat_string.asp)                    |
| var str = "Welcome to the universe.";<br>var n = str.`endsWith`("universe.");            | Determines whether a string ends with the characters of a specified string                                                                                                                                       | [w3s](https://www.w3schools.com/jsref/jsref_endswith.asp)                         |
| var str = "Welcome to the universe.";<br>var n = str.`includes`("world");                | Determines whether a string contains the characters of a specified string                                                                                                                                        | [w3s](https://www.w3schools.com/jsref/jsref_includes.asp)                         |
| var str = "Hello world!";<br>str.`repeat`(2);                                            | Returns a new string with a specified number of copies of the string it was called on                                                                                                                            | [w3s](https://www.w3schools.com/jsref/jsref_repeat.asp)                           |
| var str = "Visit Microsoft!";<br>var res = str.`replace`("Microsoft", "W3Schools");      | Searches a string for a specified value, or a regular expression, and returns a new string where the specified values are replaced                                                                               | [w3s](https://www.w3schools.com/jsref/jsref_replace.asp)                          |
| var str = "Visit W3Schools!";<br>var n = str.`search`("W3Schools");                      | Searches a string for a specified value, and returns the position of the match                                                                                                                                   | [w3s](https://www.w3schools.com/jsref/jsref_search.asp)                           |
| var str = "Hello world!";<br>var res = str.`slice`(0, 5);                                | Extracts parts of a string and returns the extracted parts in a new string. Use the start and end parameters to specify the part of the string you want to extract.                                              | [w3s](https://www.w3schools.com/jsref/jsref_slice_string.asp)                     |
| var str = "How are you doing today?";<br>var res = str.`split`(" ");                     | Split a string into an array of substrings, and returns the new array.<br>note: If an empty string ("") is used as the separator, the string is split between each character.                                    | [w3s](https://www.w3schools.com/jsref/jsref_split.asp)                            |
| var str = "Welcome to the universe.";<br>var n = str.`startsWith`("Welcome");            | Determines whether a string begins with the characters of a specified string                                                                                                                                     | [w3s](https://www.w3schools.com/jsref/jsref_startswith.asp)                       |
| var str = "Hello world!";<br>var res = str.`substr`(1, 4);                               | Extracts parts of a string, beginning at the character at the specified position, and returns the specified number of characters                                                                                 | [w3s](https://www.w3schools.com/jsref/jsref_substr.asp)                           |
| var str = "Hello world!";<br>var res = str.`substring`(1, 4);                            | Extracts the characters from a string, between two specified indices, and returns the new sub string                                                                                                             | [w3s](https://www.w3schools.com/jsref/jsref_substring.asp)                        |
| var str = "Hello World!";<br>var res = str.`toLowerCase`();                              | Converts a string to lowercase letters                                                                                                                                                                           | [w3s](https://www.w3schools.com/jsref/jsref_tolowercase.asp)                      |
| var str = "Hello World!";<br>var res = str.`toUpperCase`();                              | Converts a string to uppercase letters                                                                                                                                                                           | [w3s](https://www.w3schools.com/jsref/jsref_touppercase.asp)                      |
| var str = "       Hello World!        ";<br>alert(str.`trim`());                         | Removes whitespace from both sides of a string                                                                                                                                                                   | [w3s](https://www.w3schools.com/jsref/jsref_trim_string.asp)                      |

## Functions

### Function Template

```JavaScript
function functionname() {
    // code
}

functionname();
```

### For Loop Template

```JavaScript
var numberarray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
for (var i = 0; i < numberarray.length; i++) {
    // loop 10 times
}
```

### Fibonacci Sequence

```JavaScript
function fibonacci(num){
    var a = 1, b = 0, temp;

    while (num >= 0){
        temp = a;
        a = a + b;
        b = temp;
        num--;
    }

return b;
}
```

### Fibonacci Sequence Recursion

```JavaScript
function fibonacci(num) {
    if (num <= 1){
        return 1;
    }

return fibonacci(num - 1) + fibonacci(num - 2);
}
```

### Switch Example

```JavaScript
switch(expression) {
    case n:
        code block
        break;
    case n:
        code block
        break;
    default:
        default code block
}
```

## Dictionaries

### Create dictionary  

```JavaScript
var dict = {};
```

### Populate Dictionary

```JavaScript
dict["key"] = value;
// or
dict.key = "value";
```

### Iterating Key/Value Pairs

```JavaScript
for (var key in dict) {
    var value = dict[key];
}
```

### Dictionary Example

```JavaScript
var numberOfOccurences = function(array) {
    var dict = {};
    // check number of occurrences in array
    for(var i = 0; i < array.length; i++) {
        if (array[i] in dict){
        // if the key (array value) is in dict, add
            dict[array[i]]++;
        } else {
        // if the key isn't already in dict, give it the value 1
            dict[array[i]] = 1;
        }
    }
    // display dict with key:value pairs
    console.log(dict);
    for(var key in dict){
        var value = dict[key];
        // console.log the values only
        console.log(value);
    }
};
```

## Terms

| Term          | Definition                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Link                                                                                                       |
| ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| Prototype     | Allows you to add new properties/methods to object constructors. Every object in JavaScript has a hidden internal property called `Prototype` that can be used to extend object properties and methods.                                                                                                                                                                                                                                                                                                                                             | https://www.w3schools.com/js/js_object_prototypes.asp                                                      |
| Inheritance   | inheritance is the process by which objects of one class acquire the properties of objects of another class. It supports the concept of hierarchical classification. Inheritance provides re usability. This means that we can add additional features to an existing class without modifying it.                                                                                                                                                                                                                                                   | https://www.freecodecamp.org/news/a-guide-to-prototype-based-class-inheritance-in-javascript-84953db26df0/ |
| Classes       | A JavaScript class is a type of function. Classes are declared with the `class` keyword.                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Closure       | JavaScript variables can belong to the local or global scope. Global variables can be made local (private) with closures. A closure gives you access to an outer function’s scope from an inner function. In JavaScript, closures are created every time a function is created, at function creation time.                                                                                                                                                                                                                                          | https://medium.com/javascript-scene/master-the-javascript-interview-what-is-a-closure-b2f0d2152b36         |
| Object        | In JavaScript, almost "everything" is an object.<br>In real life, a car is an object. A car has properties like weight and color, and methods like start and stop. Objects are variables too. But objects can contain many values. The values are written as `name:value` pairs (name and value separated by a colon).<br>Objects can also have methods. Methods are actions that can be performed on objects. Methods are stored in properties as function definitions.<br>In a function definition, `this` refers to the "owner" of the function. | https://www.w3schools.com/js/js_objects.asp<br>https://www.w3schools.com/js/js_object_definition.asp       |
| Arity         | By calling `return functionName.length;` it will return the number of arguments, which is the functions arity.                                                                                                                                                                                                                                                                                                                                                                                                                                      | https://stackoverflow.com/questions/4848149/get-a-functions-arity                                          |
| Hoisting      | Hoisting is JavaScript's default behavior of moving all declarations to the top of the current scope (to the top of the current script or the current function).                                                                                                                                                                                                                                                                                                                                                                                    | https://www.w3schools.com/js/js_hoisting.asp                                                               |
| Scoping       | Variables declared within a JavaScript function, become LOCAL to the function.<br> Local variables have Function scope: They can only be accessed from within the function.                                                                                                                                                                                                                                                                                                                                                                         | https://www.w3schools.com/js/js_scope.asp                                                                  |
| Callback      | We can pass a function as an argument in another function and later execute that passed-in function or even return it to be executed later.                                                                                                                                                                                                                                                                                                                                                                                                         |
| Polymorphism  | Object-oriented paradigm that provides a way to perform a single action in different forms. It provides an ability to call the same method on different JavaScript objects. As JavaScript is not a type-safe language, we can pass any type of data members with the methods.                                                                                                                                                                                                                                                                       | https://www.javatpoint.com/javascript-oops-polymorphism                                                    |
| Encapsulation | Enclosing all the functionalities of an object within that object so that the object’s internal workings (its methods and properties) are hidden from the rest of the application. This allows us to abstract or localize specific set of functionalities on objects.                                                                                                                                                                                                                                                                               |
| Instance      | An implementation of a Function.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |

## References

**[JS Glossary](https://www.codecademy.com/articles/glossary-javascript)**  
**[JS Vocab](https://trothman.com/ACES/javascript/Jsvocab.htm)**  
**[JS Jargon](https://www.hongkiat.com/blog/javascript-jargon/)**
