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

| Term        | Definition |
| ----------- | ---------- |
| Prototype   |
| Inheritance |
| Classes     |
| Closure     |
| Object      |
| Arity       |
| Hoisting    |

## References

**[JS Glossary](https://www.codecademy.com/articles/glossary-javascript)**  
**[JS Vocab](https://trothman.com/ACES/javascript/Jsvocab.htm)**
**[JS Jargon](https://www.hongkiat.com/blog/javascript-jargon/)**