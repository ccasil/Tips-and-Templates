# JavaScript

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

## Dictionaries

Create dictionary  

```JavaScript
var dict = {};
```

Populate Dictionary

```JavaScript
dict["key"] = value;
// or
dict.key = "value";
```

Iterating Key/Value Pairs

```JavaScript
for (var key in dict) {
    var value = dict[key];
}
```

## Terms

| Term        | Definition                                                                                                                                                                                                                                                                                                 | Link                                                                                                       |
| ----------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| Prototype   | Allows you to add new properties/methods to object constructors. Every object in JavaScript has a hidden internal property called `Prototype` that can be used to extend object properties and methods.                                                                                                    | https://www.w3schools.com/js/js_object_prototypes.asp                                                      |
| Inheritance | inheritance is the process by which objects of one class acquire the properties of objects of another class. It supports the concept of hierarchical classification. Inheritance provides re usability. This means that we can add additional features to an existing class without modifying it.          | https://www.freecodecamp.org/news/a-guide-to-prototype-based-class-inheritance-in-javascript-84953db26df0/ |
| Classes     | A JavaScript class is a type of function. Classes are declared with the `class` keyword.                                                                                                                                                                                                                   |
| Closure     | JavaScript variables can belong to the local or global scope. Global variables can be made local (private) with closures. A closure gives you access to an outer function’s scope from an inner function. In JavaScript, closures are created every time a function is created, at function creation time. | https://medium.com/javascript-scene/master-the-javascript-interview-what-is-a-closure-b2f0d2152b36         |
| Object      |                                                                                                                                                                                                                                                                                                            | https://www.w3schools.com/js/js_objects.asp<br>https://www.w3schools.com/js/js_object_definition.asp       |
| Arity       |
| Hoisting    | Hoisting is JavaScript's default behavior of moving all declarations to the top of the current scope (to the top of the current script or the current function).                                                                                                                                           | https://www.w3schools.com/js/js_hoisting.asp                                                               |
| Scoping     | Variables declared within a JavaScript function, become LOCAL to the function.<br> Local variables have Function scope: They can only be accessed from within the function.                                                                                                                                | https://www.w3schools.com/js/js_scope.asp                                                                  |

## References

**[JS Glossary](https://www.codecademy.com/articles/glossary-javascript)**  
**[JS Vocab](https://trothman.com/ACES/javascript/Jsvocab.htm)**  
**[JS Jargon](https://www.hongkiat.com/blog/javascript-jargon/)**