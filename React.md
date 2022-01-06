# React

Start:
```
npm init -y
npm install --save react react-dom
```
| Keyword               | Definition                                                                                                                                                                                                                          |
| --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| React                 | The React object is what's going to allow us to create objects that'll eventually become DOM nodes.                                                                                                                                 |
| React.createElement() | The createElement() method returns the foundational building block of the React library: the React "Element". <br>`React.createElement("h1", {style: {color: "red"}, className:"header"}, "Hello React");`                              |
| React.Component       | A "Component" in React is essentially a configurable, and reusable piece of UI. They can be as simple as a function you write that returns a React "Element", or - optionally - a class you define that extends the React.Component |
| ReactDOM              | React on its own is designed to be just a library for building User Interfaces, and can be plugged into various platforms (ie. web, mobile applications, desktop applications, etc).                                                |
| ReactDOM.render()     | This method is where we plug our React application into an HTML document. It takes two main arguments: a React Element, and a pointer to an HTML DOM node where your React Element is to be rendered.                               |
| React.createElement   | The React element takes 3 arguments: type, props, children. Calling the function returns a React element-- an object that describes the type of DOM node that will eventually be rendered to the browser.                           |

| Command | Action |
| ------- | ------ |
|    create-react-app app-name     |   Projects built with create-react-app come pre-loaded with an array of commonplace React tooling, most notably the ability to make use of modern javascript versions. Not only will we be able to make use of es2015/es2016, etc, we will be able to use jsx syntax, which enables us to write embedded html-like syntax into our React code      |

## Project Structure

```
├── your-app // notable files highlighted
    ├── public
    │   └── index.html // contains entry-point DOM node
    ├── src // your react code will go here
    │   └── index.js // ReactDOM.render() call goes here
    └── node_modules
         └── // node packages
```

#### Further Organization

```
└── your-app
    └── src 
        ├── index.js
        └── components 
            ├── App.js 
            ├── App.css 
            └── Title.js
```

## How to Run

1. Delete contents of ./src
2. 
```JavaScript
import ReactDom from 'react-dom';
import React from 'react';
// babel
const Element1 = React.createElement("h1", null, "Hello React");
// jsx
const Element1 = <h1>Hello React</h1>;

// arrow function
const Element2 = () => {
    return (React.createElement("h1", null, "Hello React");)
}
ReactDom.render(Element1, document.getElementById("root"));
ReactDom.render(Element2(), document.getElementById("root"));
ReactDom.render(<Element2 />, document.getElementById("root"));
```
3. npm start -> localhost:3000

### Components

* A component is just a function that takes data and returns UI.

```JavaScript
function(data) {
    // Logic that reads data and prepares the UI to return
    return UI
}
```

```JavaScript
const HeaderComponent = (props) => {
    return <h1>Hello World!</h1>;
     
    // equivalent to :
    // return React.createElement('h1', null, 'Hello Everyone!');
}
```
* The variable name is uppercase. That's a requirement of any React component that we create
* Components such as these are referred to as Functional Components, or Stateless Components.

### Nested JSX Elements

* First, we will need to use a "div" element - or some other HTML element that is nestable ("ul", "header", etc) - as the parent container.
* Second, we will need to wrap the entire JSX expression in parens.

```JavaScript
// import React, ReactDOM statements
copy

const App = (props) => {
    return (
        <div>
            <h1>Hello Everyone</h1>
            <p>Okay lets go!</p>
        </div>
    );
}
ReactDOM.render(<App />, document.getElementById("root"));
// equivalent to:
// ReactDOM.render(App(), document.getElementById("root"));
```

### Module Export

At the bottom of your component files, you will want to add a default export ComponentName statement. 

```JS
// /src/TestModule.js
import React from 'react';
const TestModule = (props) => {
    return <h1>This is a TestModule!</h1>;
};
export default TestModule;
```

### Module Import

To import a module, you will use an import statement at the top of your file. This is much like how you are importing the React library. 

```JS
// /src/App.js
import React from 'react';
 
import TestModule from './TestModule'; // we can drop the .js file extension
import './App.css';
const App = (props) => {
    return (
        <div>
            <h1>Here's our fancy App.</h1>
            <p>Hey pretty cool!</p>
            <TestModule />
            <TestModule />
            <TestModule />
        </div>  
    );
};
export default App;
```

## Props

props is how data flows from a parent to child component in React. 

```JS
// /src/index.js
import ReactDom from 'react';
 
import TestModule from './TestModule'; // we can drop the .js file extension

const props = {
    title: "Test Title",
    description: "Test Description"
}
ReactDom.reder(TestModule(props), document.getElementbyId("root"));
ReactDom.reder(<TestModule title="React" description="New Description" />, document.getElementbyId("root"));
```

```JS
// /src/TestModule.js
import React from 'react';
const TestModule = (props) => {
    console.log(props);
    return (
        <h1>This is the title: {props.title}!</h1>
        <p>This is the description: {props.description}</p>
        );
};
export default TestModule;
```

example:
```JS
const Title = (props) => {
    const fWeight = (props.isImportant) ? ="string from-rainbow">"bold" : "normal";
     
    return <h1 style={{color:props.color, fontWeight:fWeight}}>{props.text}</h1>;
    // note the double curly braces here: 
    // the style property needs to be a complete javascript object,
    // and since we are embedding this value, it is also being wrapped in a set of
    // curly braces for JSX
}
 
const App = (props) => {
    return (
        <div>
            <Title text="Title One" color="red" isImportant={true} />
            <Title text="Title One" color="green" isImportant={false} />
            <Title text="Title One" color="orange" isImportant={false} />
        </div>
    )
}
```

## Resources

**[React](https://reactjs.org/docs/create-a-new-react-app.html)**  