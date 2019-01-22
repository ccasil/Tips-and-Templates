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