# Hash Maps

The amazing thing about key-value pairs (in JavaScript we refer to these as objects, in Python as dictionaries... there are many names! Including hash maps and associative arrays) is that the look up time is very quick! We create a key with any name we like and associate a value with that key. 

```JS
var dino = { 
    type: "dinosaur",
    species: "Snorkasaurus", 
    role: "pet", 
    owner: "Fred Flintstone",
    creator: "Hanna-Barbera"
};
console.log(dino.owner);  // How does this work, anyway? And why is it so fast?
```

1. 
```JS
var dino = ["dinosaur", "Snorkasaurus", "pet", "Fred Flintstone", "Hanna-Barbera"];
// we'll have to remember what type of data is stored in each index!
console.log(dino[2]);  // if we want dino's role, remember that it is stored at index 2
```

2. So then we get smarter and decide to store both the keys and the values in the array. Let's put each key and value in their own array, so we'll have a two-dimensional array. This way, we don't have to remember what each index is storing. We could just loop through the array until we find the array that has our desired key at index 0. The value would be at index 1.

* This gets sllwer as the array gets longer
```JS
var dino = [
            ["type", "dinosaur"], ["species", "Snorkasaurus"], ["role", "pet"], 
            ["owner", "Fred Flintstone"], ["creator", "Hanna-Barbera"]
           ];
// to find Dino's role, we no longer have to remember which index we placed it in
// loop through the array reading the 0 index of each nested array
// when we find the array that contains the key, log the value at index 1 in that array
for(var i=0; i<dino.length; i++){
    if(dino[i][0] == "role"){
        console.log(dino[i][1]);
    }
}
```

3. Key-value pairs work by hashing the key into a hash code. That means we turn the string that we are using as a key into a number. The hashing algorithm is very reliable and will always produce the same number for a given key, but it will be unique to that string. No other string could produce the same number. What this means is that we can use this number as an index position in an array! We no longer need to loop through the array. We simply hash the key to find out which index to go to!