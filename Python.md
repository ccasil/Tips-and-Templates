# Python

## Functions

### Function Template

```Python
def functionname():
    # code
```

### For Loop Template

```Python
fruits = ["apple", "banana", "cherry"]
for x in fruits:
    print(x)
    # loop through a list

for x in "persimmon":
    print(x)
    # loop through a string

for x in range(0, 10):
    print(x)
    # 0 to 9 (not including 10)
```

## Dictionaries

Create a new dictionary  

```Python
mydict = {
    "key1": value1,
    "key2": value2,
    "key3": value3,
}
```

Add a value to the dictionary  

```Python
mydict["key4"] = value4
```

Remove a key and it's value  

```Python
del mydict["key3"]  
```

Check the length (Number of pairs)  
```Python
print len(mydict)
```

Check if key exists in a given dictionary  

```Python
"key1" in mydict
# True
"key5" in mydict
# False

for item in mydict:
    if "key1" in mydcit:
        print "Key Found"
        break
    else:
        print "Key not Found"
```

Print all key and values  

```Python
for key, val in mydict.items():
    print key, ':', val
```

Get only the keys from the dictionary

```Python
variablename = mydict.keys()
print variablename
```

Print the values from the dictionary

```Python
for item in mydict:
    mydictvalue = mydict[item]
    print mydictvalue
```

Print sorted dictionary

```Python
for key, value in sorted(mydict.items()):
print key, value
```
