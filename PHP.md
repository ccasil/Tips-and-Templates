# PHP

## Examples

| Code Snippet                                                                      | Output                                                                     |
| --------------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| `echo 'Hello World';`                                                             | Outputs "Hello World"                                                      |
| `<?php`<br>`echo 'This is PHP`<br>`?>`                                            | Opening and closing tags for PHP scripts                                   |
| `// Single-line comment`                                                          |
| `/* Multi-line comment */`                                                        |
| `$txt = 'Hello';`                                                                 | Variable named txt with value 'Hello'                                      |
| `$x = 5;`<br>`$y = 7;`<br>`echo $x + $y;`                                         | Create 2 variables (x and y), then echo statement to output sum of x and y |
| `echo strlen ('Hello World!');`                                                   | Get length of the string "Hello World!"                                    |
| `echo strrev ('Hello World!');`                                                   | Reverse the string "Hello World!"                                          |
| `$oldtxt = "Hello World!";`<br>`$newtxt = str_replace("World", "Kyle", $oldtxt);` | Replace the word "World" with the word "Kyle"                              |

## Operators

| Example               | Description                    |
| --------------------- | ------------------------------ |
| `echo 10 * 5;`        | Outputs 50; 10 multiplied by 5 |
| `echo 10 / 2;`        | Outputs 5; 10 divided by 2     |
| `var_dump($a == $b);` | Check if $a is equal to $b     |
| `var_dump($a != $b);` | Check if $a is not equal to $b |

## If...Else

> Output "Hello World" if `$a` is greater than `$b`.
```PHP
$a = 50;
$b = 10;
if ($a > $b) {
    echo "Hello World";
}
```

> Output "Hello World" if `$a` is NOT equal to `$`b.
```PHP
$a = 50;
$b = 10;
if ($a != $b) {
    echo "Hello World";
}
```

> Output "Yes" if `$a` is equal to `$b`, otherwise output "No".
```PHP
$a = 50;
$b = 10;
if ($a == $b) {
    echo "Yes";
} else {
    echo "No";
}
```

> Print "1" if a is equal to b, print "2" if a is greater than b, otherwise print "3".
> Output "1" if `$a` is equal to `$b`, print "2" if `$a` is greater than `$b`, otherwise output "No".
```PHP
$a = 50;
$b = 10;
if ($a == $b) {
    echo "1";
} else if ($a > $b) {
    echo "2";
} else {
    echo "3";
}
```

## Switch

> A switch statement that will output "Hello" if `$color` is "red", "welcome" if `$color` is "green", and will output "Neither" if `$color` is neither "red" nor "green".
```PHP
switch ($color) {
    case "red":
        echo "Hello";
        break;
    case "green":
        echo "Welcome";
        break
    default:
        echo "Neither";
}
```

## Loops

> Output `$i` as long as `$i` is less than 6.
```PHP
$i = 1;
while ($i < 6) {
    echo $i;
    $i++;
}
```

```PHP
$i = 1;
do {
    echo $i;
    $i++;
} while ($i <6);
```

> Loop that runs from 0 to 9.
```PHP
for ($i = 0; $i < 10; $i++) {
    echo $i;
}
```

> Loop through items in the `$colors` array
```PHP
$colors = array("red", "green", "blue", "yellow");
foreach ($colors as $x) {
    echo $x;
}
```

## Functions

> Create a function named `myFunction` and call (execute) it
```PHP
function myFunction() {
    echo "Hello World!";
}

myFunction();
```

> Function with two parameters, print the first parameter and return the second value
```PHP
function myFunction($fname, $lname) {
    echo $fname;
    return $lname;
}
```

## Arrays

> Output the number of items in an array
```PHP
$fruits = array("Apple", "Banana" "Orange");
echo count($fruits);
```

> Output the second item in the `$fruits` array
```PHP
$fruits = array("Apple", "Banana" "Orange");
echo $fruits[1];
```

> Create an associative array containing the age of Peter, Ben and Joe
> Output Ben's age
```PHP
$age = array ("Peter"=>"35", "Ben"=>"37", "Joe"=>"43");
echo "Ben is " . $age['Ben'] . " years old.";
```

> Loop through an associative array and output the key and the value.
```PHP
foreach($age as $x => $y) {
    echo "Key=" . $x . ", Value=" . $y;
}
```

> Sort `$colors` array alphabetically
```PHP
$colors = array("red", "green", "blue", "yellow");
sort ($colors);
```

> Sort `$colors` array descending alphabetically
```PHP
$colors = array("red", "green", "blue", "yellow");
rsort ($colors);
```

> Sort `$age` array according to the values
```PHP
$age = array("Peter"=>"35", "Ben"=>"37", "Joe"=>"43");
asort($age);
```