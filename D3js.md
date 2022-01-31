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

The `.data()` method above joins elements to the data provided.  In this case, a div element per data. Thankfully, there's a corresponding `.enter()` method that invokes these nodes to be built...where the `.append()` will add whatever elements we choose. What's more important is the `.enter()` method.  A better way to think about it is this: The `.enter().append()` combination builds elements for the data that don't have element representation yet. The `.selectAll()` works like you would expect from jQuery or your basic JS .getElementsByTagName() so it's going to select all existing <div> in this case BEFORE the data is bound.  So if our HTML were to look like this...

```JS
<body>
    <div></div>
    <div></div>
</body>
```

... our .selectAll("div") would capture the two already-existing divs and bind data (update) to them when we apply .data().  Then chaining .enter() would allow D3js to figure out how many additional nodes would need to be built to satisfy the remaining data (in this case: 6 data - 2 existing divs = 4 more div nodes).  Tying it off with .append("div") says to append a div per node that doesn't exist yet, i.e. found in the _enter selection (in this case 4 nodes).

```HTML
<!-- index.html -->
<html>
    <head>
        <title>Dummy HTML</title>
        <script src="https://d3js.org/d3.v5.js"></script>
        <link rel="stylesheet" href="style.css"><!-- we'll add CSS soon -->
    </head>
    <body>
        <!-- we want our bars to show up here eventually -->
    </body>
    <script src="bars.js"></script>
</html>
```

```JS
// bars.js
// We've been trying to UPDATE all along!
// Because we're trying to select all existing divs inside the body
// and tie data to them
var bars = d3.select("body")
            .selectAll("div")
            .data([4, 8, 15, 16, 20, 12]);
// We create the bars variable to hang onto our previous d3 selection
// and preserve the data/elements that we console logged previously.
// In other words, we don't want to lose the _enter and _exit collections.
// As soon as we execute .data(), the _enter and _exit collections are determined.
// Now let's ENTER and create the right amount of divs to supplement our data
// This will append to the body element since we saved the selection previously into
// the bars variable
bars.enter().append("div"); 
// Now let's EXIT and remove any lingering divs we might have had
// In this case we had no surplus of divs to remove. We will cover this with examples later.
bars.exit().remove();
```

```CSS
div {     
    display: inline-block;
    width: 20px;
    height: 50px;
    vertical-align: bottom;
    background-color: blue;
    margin-right: 20px;
    border: 1px solid black;
}
```

## Styling and Data

```JS
// bars.js
// ...
bars.enter().append("div")
    .style("background-color","red");
// ...
```

Remember: we're introducing new data to our document, so putting the style method here makes more sense. To do so, anytime we supply a function as an argument to most D3js methods, we'll expose the values themselves, their indexes (if we wish) and more depending on the situation.  If we want to style the divs' heights according to their values, we can do so by providing a function instead of a hard-coded value as our second argument.

```JS
// ...
bars.enter().append("div")
    .style("background-color","red")
    .style("height", function(d){ return d*20+"px"; }); // "height", "80px" would be the example for the first value 4
// ...
```

In this case we're exposing our data's value d inside the function and returning that value multiplied by 20 (to scale it) and not forgetting to supply our pixel units to fulfill a proper CSS rule.  What's important to note here is that we're trying to regain access to that data lurking behind our elements and have it work for us. 

## Dynamic Data

We need some sort of way to update our .data() method with fresh data. As of now, we are doing all ENTER() work and have built a stationary bar chart. We need to ask ourselves, if we're to use the nums array with dynamically-created data, where do we use it?  If you're thinking in the UPDATE portion of our code, you're on it!  When the button is clicked, we're looking to have new data come in and therefore need to inject it as our new data for the .data() method and start the flow of update/enter/exit.  We can do this a number of different ways, but for simplicity, we'll build another function buildChart() that takes in an array of values and we'll build the chart over again after passing our randomly generated numbers in.

```JS
// bars.js
var bars = d3.select("#chart")
    .selectAll("div")
    .data([4, 8, 15, 16, 20, 12])
bars.enter().append("div")
    .text(function(d){ return d; })
    .style("height", function(d){ return d*20+"px" })
// function for generating random length (betweeen 0 and 20) array of random values (between 0 and 20)
function randomsGenerator(){
    var nums = [];
    var size = Math.floor(Math.random()*20);
    for (var i = 0; i < size; i++){
        nums.push(Math.floor(Math.random()*20));
    }
    buildChart(nums);
}
function buildChart(newdata){
    var bars = d3.select("#chart")
        .selectAll("div")
        .data(newdata)
        .text(function(d){ return d; })
        .style("height", function(d){ return d*20+"px" })
    bars.enter().append("div")
        .text(function(d){ return d; })
        .style("height", function(d){ return d*20+"px" })
        .style("background-color", "lightblue");
    bars.exit().remove();
}
```

## Transitions

The .transition() method returns a transition object so it's important to use it in the proper context. ...trans is holding onto an instance of a transition object, and therefore not going to gel with the rest of our code.  Case in point, thinking of chaining a .transition() onto our UPDATE code is fine, but adding it the same way to our ENTER code and we get the bars.enter()...is not a function error.

```JS
var trans = d3.transition()
            .duration(2000)
```

## SVG

To get started with SVG, we'll simply build an <svg> tag anywhere in our HTML. Granted, we'll want to pick our location appropriately, just like if we were to be specific about where a nav bar would go.  Here we're going to build some SVG graphics inside the div#chart.

```HTML
<body>
    <div id="chart">
        <svg>
            <rect height="50" width="20" x="20" y="50" fill="blue" stroke="black" stroke-width="2"></rect>
            <circle cx="100" cy="100" r="50" fill="red" stroke="black" stroke-width="2"></circle>
            <line x1="100" y1="50" x2="100" y2="0" stroke="black" stroke-dasharray="5,5"></line>
            <line x1="20" y1="50" x2="20" y2="0" stroke="black" stroke-dasharray="5,5"></line>
            <line x1="0" y1="50" x2="100" y2="50" stroke="black" stroke-dasharray="5,5"></line>
        </svg>
    </div>
</body>
```
```CSS
svg {
    width: 200px;
    height: 100px;
    border: 2px solid black;
}

```

## Resources

[D3 Examples](https://observablehq.com/@d3/gallery)