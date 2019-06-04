# PHP

### Data Types

* String
* Integer (non-decimal number between -2,147,483,648 and 2,147,483,647)
* Float (double)
* Boolean
* Array
* Object
* NULL
* Resource

## Keywords and Common Functions

| Keyword                                 | Definition                                                                                                                                                                                                                                  |
| --------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `$`                                     | A variable starts with the `$` sign, followed by the name of the variable                                                                                                                                                                   |
| `global`                                | Used to access a global variable from within a function<br>Use the `global` keyword before the variables (inside the function)                                                                                                              |
| `$GLOBALS[index]`                       | PHP stores all global variables in an array called `$GLOBALS[index]`. The index holds the name of the variable. This array is also accessible from within functions and can be used to update global variables directly                     |
| `static`                                | When a function is completed/executed, all of its variables are deleted. However, sometimes we want a local variable NOT to be deleted. We need it for a further job                                                                        |
| `echo`  and `print`                     | Output data to the screen<br>`echo` has no return value and can take multiple parameters<br>`print` has a return value of 1 so it can be used in expressions but can only take one argument<br>(note: echo is marginally faster than print) |
| `strlen()`                              | Returns the length of a string                                                                                                                                                                                                              |
| `str_word_count()`                      | Counts the number of words in a string                                                                                                                                                                                                      |
| `strrev()`                              | Reverses a string                                                                                                                                                                                                                           |
| `strpos()`                              | Searches for a specific text within a string<br>If a match is found, the function returns the character position of the first match. If no match is found, it will return FALSE                                                             |
| `str_replace()`                         | Replaces some characters with some other characters in a string                                                                                                                                                                             |
| `define(name, value, case-insensitive)` | name: Specifies name of constant<br>value: Specifies value of constant<br>case-insensitive: Specifies whether the constant name should be case-insensitive. Default is false                                                                |

## Operators

| Operation | Example        | Result                                                                                                                                           |
| --------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `+`       | `$x + $y`      | Sum of $x and $y                                                                                                                                 |
| `-`       | `$x - $y`      | Difference of $x and $y                                                                                                                          |
| `*`       | `$x * $y`      | Product of $x and $y                                                                                                                             |
| `/`       | `$x / $y`      | Quotient of $x and $y                                                                                                                            |
| `%`       | `$x % $y`      | Remainder of $x divided by $y                                                                                                                    |
| `**`      | `$x ** $y`     | Result of raising $x to the $y'th power                                                                                                          |
| `x = y`   |                | The left operand gets set to the value of the expression on the right                                                                            |
| `x += y`  | `x = x + y`    | Addition                                                                                                                                         |
| `x -= y`  | `x = x - y`    | Subtraction                                                                                                                                      |
| `x *= y`  | `x = x * y`    | Multiplication                                                                                                                                   |
| `x /= y`  | `x = x / y`    | Division                                                                                                                                         |
| `x %= y`  | `x = x % y`    | Modulus                                                                                                                                          |
| `==`      | `$x == $y`     | Returns true if $x is equal to $y                                                                                                                |
| `===`     | `$x === $y`    | Returns true if $x is equal to $y, and they are of the same type                                                                                 |
| `!=`      | `$x != $y`     | Returns true if $x is not equal to $y                                                                                                            |
| `<>`      | `$x <> $y`     | Returns true if $x is not equal to $y                                                                                                            |
| `!==`     | `$x !== $y`    | Returns true if $x is not equal to $y, or they are not of the same type                                                                          |
| `>`       | `$x > $y`      | Returns true if $x is greater than $y                                                                                                            |
| `<`       | `$x < $y`      | Returns true if $x is less than $y                                                                                                               |
| `>=`      | `$x >= $y`     | Returns true if $x is greater than or equal to $y                                                                                                |
| `<=`      | `$x <= $y`     | Returns true if $x is less than or equal to $y                                                                                                   |
| `<=>`     | `$x <=> $y`    | Returns an integer less than, equal to, or greater than zero, depending on if $x is less than, equal to, or greater than $y. Introduced in PHP 7 |
| `++$x`    | Pre-increment  | Increments $x by one, then returns $x                                                                                                            |
| `$x++`    | Post-increment | Returns $x, then increments $x by one                                                                                                            |
| `--$x`    | Pre-decrement  | Decrements $x by one, then returns $x                                                                                                            |
| `$x--`    | Post-decrement | Returns $x, then decrements $x by one                                                                                                            |

## Logical Operators

| Operator | Name | Example     | Result                                         |
| -------- | ---- | ----------- | ---------------------------------------------- |
| `and`    | And  | `$x and $y` | True if both $x and $y are true                |
| `or`     | Or   | `$x or $y`  | True if either $x or $y are true               |
| `xor`    | Xor  | `$x xor $y` | True if either $x or $y are true, but not both |
| `&&`     | And  | `$x && $y`  | True if both $x and $y are true                |
| `||`     | Or   | `$x || $y`  | True if either $x or $y are true               |
| `!`      | Not  | `!$x`       | True if $x is not true                         |

## String Operators

| Operator | Name                     | Example          | Result                           |
| -------- | ------------------------ | ---------------- | -------------------------------- |
| `.`      | Concatenation            | `$txt1 . $txt2`  | Concatenation of $txt1 and $txt2 |
| `.=`     | Concatenation Assignment | `$txt1 .= $txt2` | Appends $txt2 to $txt1           |

## Array Operators

* Indexed arrays - Arrays with a numeric index
* Associative arrays - Arrays with named keys
* Multidimensional arrays - Arrays containing one or more arrays


| Operator   | Name         | Example     | Result                                                                                          |
| ---------- | ------------ | ----------- | ----------------------------------------------------------------------------------------------- |
| `+`        | Union        | `$x + $y`   | Union of $x and $y                                                                              |
| `==`       | Equality     | `$x == $y`  | Returns true if $x and $y have the same key/value pairs                                         |
| `===`      | Identity     | `$x === $y` | Returns true if $x and $y have the same key/value pairs in the same order and of the same types |
| `!=`       | Inequality   | `$x != $y`  | Returns true if $x is not equal to $y                                                           |
| `<>`       | Inequality   | `$x <> $y`  | Returns true if $x is not equal to $y                                                           |
| `!==`      | Non-identity | `$x !== $y` | Returns true if $x is not identical to $y                                                       |
| `sort()`   |              |             | sort arrays in ascending order                                                                  |
| `rsort()`  |              |             | sort arrays in descending order                                                                 |
| `asort()`  |              |             | sort associative arrays in ascending order, according to the value                              |
| `ksort()`  |              |             | sort associative arrays in ascending order, according to the key                                |
| `arsort()` |              |             | sort associative arrays in descending order, according to the value                             |
| `krsort()` |              |             | sort associative arrays in descending order, according to the key                               |

## Conditional Assignment Operators

| Operator | Name            | Example                      | Result                                                                                                                                                                 |
| -------- | --------------- | ---------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `?:`     | Ternary         | `$x = expr1 ? expr2 : expr3` | Returns the value of $x. The value of $x is expr2 if expr1 = TRUE. The value of $x is expr3 if expr1 = FALSE                                                           |
| `??`     | Null Coalescing | `$x = expr1 ?? expr2`        | Returns the value of $x. The value of $x is expr1 if expr1 exists, and is not NULL. If expr1 does not exist, or is NULL, the value of $x is expr2. Introduced in PHP 7 |

## Examples

| Code Snippet                                                                      | Output                                                                     |
| --------------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| `echo 'Hello World';`                                                             | Outputs "Hello World"                                                      |
| `<?php`<br>`echo 'This is PHP'`<br>`?>`                                           | Opening and closing tags for PHP scripts                                   |
| `// Single-line comment`                                                          |
| `/* Multi-line comment */`                                                        |
| `$txt = 'Hello';`                                                                 | Variable named txt with value 'Hello'                                      |
| `$x = 5;`<br>`$y = 7;`<br>`echo $x + $y;`                                         | Create 2 variables (x and y), then echo statement to output sum of x and y |
| `echo strlen ('Hello World!');`                                                   | Get length of the string "Hello World!"                                    |
| `echo strrev ('Hello World!');`                                                   | Reverse the string "Hello World!"                                          |
| `$oldtxt = "Hello World!";`<br>`$newtxt = str_replace("World", "Kyle", $oldtxt);` | Replace the word "World" with the word "Kyle"                              |

## General

> Both examples produce the same output
```PHP
<?php
$txt = "myself";
echo "I love $txt!";
echo "I love " . $txt . "!";
?> 
```

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


* while - loops through a block of code as long as the specified condition is true
* do...while - loops through a block of code once, and then repeats the loop as long as the specified condition is true
* for - loops through a block of code a specified number of times
* foreach - loops through a block of code for each element in an array


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

* Function names are NOT case-sensitive
* PHP automatically associates a data type to the variable, depending on its value. Since the data types are not set in a strict sense, you can do things like adding a string to an integer without causing and error.
* In PHP 7, type declarations were added. This gives us an option to specify the data type expected when declaring a function, and by enabling the strict requirement, it will throw a "Fatal Error" on a type mismatch.
  * To specify strict we need to set declare(strict_types=1);. This must be the on the very first line of the PHP file. Declaring strict specifies that function calls made in that file must strictly adhere to the specified data types
  * The strict declaration can make code easier to read, and it forces things to be used in the intended way.

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

> Output value from first name field from HTML form
```HTML
<form action="welcome.php" method="get">
    First name: <input type="text" name="fname">
</form>
```

```PHP
<html>
    <body>
        Welcome <?php echo $_GET["fname"]; ?>
    </body>
</html>
```
```PHP
<html>
    <body>
        Welcome <?php echo $_POST["fname"]; ?>
    </body>
</html>
```

## Superglobals

| Variable    | Use                                                                                                                                                                                                                       |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `$GLOBALS`  | Used to access global variables from anywhere in the PHP script (also from within functions or methods).<br>PHP stores all global variables in an array called $GLOBALS[index]. The index holds the name of the variable. |
| `$_SERVER`  | Holds information about headers, paths, and script locations                                                                                                                                                              |
| `$_REQUEST` | Used to collect data after submitting an HTML form                                                                                                                                                                        |
| `$_POST`    | Used to collect form data after submitting an HTML form with method="post". $_POST is also widely used to pass variables                                                                                                  |
| `$_GET`     | Can be used to collect form data after submitting an HTML form with method="get".<br>$_GET can also collect data sent in the URL.                                                                                         |
| `$_FILES`   |
| `$_ENV`     |
| `$_COOKIE`  |
| `$_SESSION` |

## Dates

| Example                | Description                                                            |
| ---------------------- | ---------------------------------------------------------------------- |
| `echo date("1");`      | Output todays day of the week (monday, tuesday etc.).                  |
| `echo date ("Y.m.d");` | Output date with correct format parameter to look like this YYYY.mm.dd |
| `echo date ("H:i:s");` | Output the time like 16:29:30 (with hour as a 24-hour format)          |

## Advanced

| Example                                                                                                                   | Description                                                   |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------- |
| `<?php include 'footer.php'; ?>`                                                                                          | include a file named footer.php                               |
| `echo readfile("file.txt");`                                                                                              | Open and read content of file.txt                             |
| `$myfile = fopen("file.txt", "r");`<br>`while(!feof($myfile)) {`<br>&nbsp;&nbsp;&nbsp;&nbsp;`echo fgetc($myfile);`<br>`}` | Open a file, output one character at a time until end-of-file |
| `setcookie("username", "Kyle", time() + (86400 * 30), "/");`                                                              | Create a cookie named 'username'                              |
| `session_start();`<br>`$_SESSION['favcolor'] = 'green';`                                                                  | Create a session variable named 'favcolor'                    |
| `echo $_SESSION["favcolor"];`                                                                                             | Output the value of the session variable 'favcolor'           |


## References

**[w3schools PHP Examples](https://www.w3schools.com/php/php_examples.asp)**  
**[w3schools PHP 7](https://www.w3schools.com/php7/default.asp)**
