# D3js

Data Driven Documents is a novel idea that means our documents, aka webpages, are centered around data!

index.html
```HTML
<html>
    <head>
        <title>Dummy HTML</title>
        <script src="https://d3js.org/d3.v5.js"></script>
    </head>
    <body>
        <!-- we want our bars to show up here eventually -->
    </body>
    <script src="bars.js"></script>
</html>
```
bars.js
```JS
d3.select("body")
  .selectAll("div")
  .data([24,16,18,12,22,16])
```

1. `d3` is the exposed object that we'll begin our HTML selections with.
2. The `.select()` method works as expected, selecting single or multiple elements just like the way your W3C Selectors work normally within Javascript.
3. It seems like the `.data()` method is supplying our data, but the `.selectAll()` method is the odd one out.

Why is there a `.select()` and a `.selectAll()` method chained together?  The first `.select()` chooses an existing element in our HTML that we'd like to add content to as you'd expect, but the `.selectAll()` is us signaling to D3js to prepare to build us div elements.  How many though? As many as is necessary to satisfy the `.data()` method's input.  In this case, 6 `divs` are prepared to be created! We'll discuss the nuance of this in the next lesson.

```JS
console.log(d3.select("body")
              .selectAll("div")           
              .data([24,16,18,12,22,16]));
// If you expand the _enter Array, you will see that there are 6 instances of EnterNodes ready to populate, and if you check each of them, you'll find a __data__ property.  So if you're curious about how and where this information is being stored, now you know!
```

## Joining Data

```JS
d3.select("body")
  .selectAll("div")
  .data([4, 8, 15, 16, 20, 12])
  .enter().append("div")
```

The .data() method above joins elements to the data provided.  In this case, a div element per data. Thankfully, there's a corresponding .enter() method that invokes these nodes to be built.

## Resources

[D3 Examples](https://observablehq.com/@d3/gallery)