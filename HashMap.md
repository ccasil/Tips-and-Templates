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

   1.  If we want to use the key "role", hash it first. The hashing algorithm will return a unique number. 
   2. If we get the number 3506294 from hashing "role", then we know we can store the value at this index in our array.
   3. Anytime we want to look up the value associated with "role", we just hash "role" and use the hash code to look up the value in the array.

    The problem is that the hashing algorithm will give insanely big numbers, and now we will have huge, unwieldy arrays to work with.

4. To solve this, we'll decide how big we will allow our array to get. Call this the capacity. We will then use our hash and mod it, or translate it into a number that fits within the capacity. We will then store our value at this index in the array. However, this introduces the problem of collisions. While the hashing algorithm guarantees that our hashes will be unique for each key, once we start modding them, we are no longer guaranteed unique numbers.

```JS
var dino = [
            [["role", "pet"], ["creator", "Hanna-Barbera"]],
            [["type", "dinosaur"]],
            [["owner", "Fred Flintstone"], ["species", "Snorkasaurus"]]
           ];
// hash the key "role", which will give a unique number
// mod the hash by the capacity we set for our array, which will give us a number within the capacity
// in this case, modding the hash gives us the number 0
// at position 0, we have a nested array
// loop through the array at position 0 to find the array with the  key "role" at index 0
// the value is in that array at position 1
```