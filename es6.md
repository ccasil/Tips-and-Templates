# ES6

## Scope

* Global
  * Every JavaScript application has a global scope. By definition that makes it omnipresent, which means that any variables or functions defined within are always available to every aspect of your application.
* Local Scope
  * Local scope, in contrast, has much narrower program visibility. It is localized to the particular function in which that information is defined.

<br />
<br />

* let
  * allows for reassignment of our declared variables content and does not require a value upon declaration. 
* const
  * must assign a value at creation and that value may not change for the life of the variable. It is immutable. 

## Template Literals

* Instead of using quotations to block your code we shall encapsulate strings using the grave accent, or backtick (`).
* Newlines, tabs and spacing will all be respected when using template strings taking much of the guesswork out of formatting your content.

```JS
var name = 'Bob';
var hello = 'Hello ' + name;  
// becomes
const name = 'Bob';
const hello = `Hello ${name}`;
```

* The `${}` syntax evaluates the enclosed expression, in this case a simple string variable, and places the results in that position. You are not limited to variables, you may perform any valid JavaScript expression, including function invocations using interpolation syntax. 

## Destructuring

Destructuring assignment syntax is a JavaScript expression that makes it possible to unpack values from arrays, or properties from objects into distinct variables.


```JS
// initial data structures
const person = { 
    firstName: 'Bob', 
    lastName: 'Marley', 
    email: 'bob@marley.com', 
    password: 'sekureP@ssw0rd9', 
    username: 'barley', 
    createdAt: 1543945177623
};
const animals = ['horse', 'dog', 'fish', 'cat', 'bird'];
// before es6
var email = person.email;
var password = person.password;
var firstAnimal = animals[0];
var secondAnimal = animals[1];
var thirdAnimal = animals[2];
// destructuring (es6)
const { email, password } = person;
const [firstAnimal, secondAnimal, thirdAnimal] = animals;
console.log(email);
// => bob@marley.com
console.log(firstAnimal);
// => horse
```

### Name Conflicts

What if my current scope already has a variable of the same name of a property that I'm extracting from an object?

```JS
const password = '12345';
const { password } = person;
```

This will certainly cause conflict. Because password exists before destructing and is a const this will throw an error: SyntaxError: Identifier 'password' has already been declared. 

```JS
const password = '12345';
const { password: hashedPassword } = person;
```
Specifying the property name, password, will access the value of that property on our object. The colon : after the property name followed by your new variable redirects the value of password to be held in hashedPassword, thereby eliminating the aforementioned identifier conflict. 

### Nested Destructuring

```JS
const person = {
  firstName: 'Bob',
  lastName: 'Marley',
  email: 'bob@marley.com',
  password: 'sekureP@ssw0rd9',
  username: 'barley',
  addresses: [
    {
      address: '1600 Pennsylvania Avenue',
      city: 'Washington, D.C.',
      zipcode: '20500',
    },
    {
      address: '221B Baker St.',
      city: 'London',
      zipcode: 'WC2N 5DU',
    }
  ],
  createdAt: 1543945177623
};

const { addresses: [whiteHouse, sherlock] } = person;
// What if we want to skip the first address and only want the city of the second, but using an alternate variable name?
const { addresses: [ , { city: london }] } = person;
console.log(london);
// => London
// Leaving an 'empty' first position (just a comma) allows skipping that index and destructuring from the second address. This can be done to any depth, just be sure your content actually exists. 
```

## Loops

### For In
```JS
var fruits = ["apple", "banana", "cherry"];
for (var fruit in fruits) {
  console.log(fruit);
}
// 0
// 1
// 2
```
The reason, of course, is that JS for-in is meant to iterate over objects keys, not array elements. While for-in remains the same in ES6, a new type of for loop has been introduced for just this purpose. 

### For Of

```JS
const fruits = ["apple", "banana", "cherry"];
for (const fruit of fruits) {
  console.log(fruit);
}
// apple
// banana
// cherry
```

By itself, you can't access index with a for-of loop, but array functionality has been extended with an entries method. 

```JS
const fruits = ["apple", "banana", "cherry"];
console.log(fruits.entries());
// => Object [Array Iterator] {}
for (const fruit of fruits.entries()) {
  console.log(fruit);
}
// [ 0, 'apple' ]
// [ 1, 'banana' ]
// [ 2, 'cherry' ]
for (const fruit of fruits.entries()) {
  console.log(`${fruit[1]} was found at ${fruit[0]}`);
}
// apple was found at 0
// banana was found at 1
// cherry was found at 2
for (const [index, fruit] of fruits.entries()) {
  console.log(`${fruit} was found at ${index}`);
}
// same result as above
```

#### For Of on Objects

```JS
const person = {
  firstName: 'Bob',
  lastName: 'Marley',
  email: 'bob@marley.com',
  username: 'barley',
};
Object.entries(person);
// [
//   [ 'firstName', 'Bob' ],
//   [ 'lastName', 'Marley' ],
//   [ 'email', 'bob@marley.com' ],
//   [ 'username', 'barley' ]
// ]
for (const [key, value] of Object.entries(person)) {
  console.log(`${key} has the value ${value}`);
}
```

## Rest / Spread

ES6 provides us with a new operator, `...`, that is context dependent. Its purpose is to capture the `rest` of a data set, or to `spread` content of an existing structure. 

```JS
function doStuff(param1, param2, ...extras) {
  ...
}
// ...numbers will pick up any passed content that does not have a named parameter. numbers will always be an array, even if the function is invoked without any parameters. Rest doesn't need to be the only parameter, but it does need to be the last. 
const collect = [10, 92, 17, 31, 22];
// collect more numbers
function min(...numbers) {
  return Math.min(...numbers);
}
min(...collect);
```
Use of `...numbers` in this context will spread the elements to our call to Math.min. Assuming we collect numbers to then pass to min our example looks like this.

### Destructuring

```JS
const animals = ['horse', 'dog', 'fish', 'cat', 'bird'];
const [firstAnimal, secondAnimal, ...otherAnimals] = animals;
otherAnimals
// => ['fish', 'cat', 'bird']
```

### Objects

```JS
const person = {
  firstName: 'Bob',
  lastName: 'Marley',
  email: 'bob@marley.com',
  password: 'sekureP@ssw0rd9',
  username: 'barley',
  addresses: [
    {
      address: '1600 Pennsylvania Avenue',
      city: 'Washington, D.C.',
      zipcode: '20500',
    },
    {
      address: '221B Baker St.',
      city: 'London',
      zipcode: 'WC2N 5DU',
    }
  ],
  createdAt: 1543945177623
};
const { firstName, lastName, ...attributes } = person;
const personCopy = { ...person };
personCopy === person
// => false
personCopy.addresses === person.addresses
// => true
```

## Default Parameters

```JS
// old
function inRange(number, min, max) {
  min = min || 0;
  max = max || 1;
  return Math.min(min, max) <= number && number < Math.min(min, max);
}
// new
function inRange(number, min = 0, max = 1) {
  return Math.min(min, max) <= number && number < Math.min(min, max);
}
```

### Destructuring

```JS
const { eyeColor = 'blue' } = person;
// => blue
const [firstAnimal = 'koala'] = [];
// => koala

// We can even destructure and assign default values to objects passed to functions. 
const credentials = {
  email: 'bob@marley.com',
  password: 'sekureP@ssw0rd9',
  username: 'barley',
};
function login({ email = 'some@email.com', password = 'superPass', username = 'noname' }) {
 ...
}
login(credentials);
// Assuming you wanted to use all the defaults for a function you might think you can simply invoke and pass no arguments.
login({});
// or
login();
// Now the default object, which has no properties, is supplied to the destructuring assignment, which then uses the default values for email, password and username. Pretty useful.
```
```JS

```
