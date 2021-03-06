# CSS

## Terms

**Specificity**: If there are two or more conflicting CSS rules that point to the same element, the browser follows some rules to determine which one is most specific and therefore wins out.

* The universal selector (*) has low specificity, while ID selectors are highly specific!
* Specificity Hierarchy:
  * Inline styles - An inline style is attached directly to the element to be styled
  * IDs - An ID is a unique identifier for the page elements
  * Classes, attributes and pseudo-classes - This category includes .classes, [attributes] and pseudo-classes such as :hover, :focus etc
  * Elements and pseudo-elements - This category includes element names and pseudo-elements, such as h1, div, :before and :after
* Calculate Specificity: Start at 0, add 1000 for style attribute, add 100 for each ID, add 10 for each attribute, class or pseudo-class, add 1 for each element name or pseudo-element
* Equal specificity: the latest rule counts - If the same rule is written twice into the external style sheet, then the lower rule in the style sheet is closer to the element to be styled
* ID selectors have a higher specificity than attribute selectors
* Contextual selectors are more specific than a single element selector - The embedded style sheet is closer to the element to be styled
* A class selector beats any number of element selectors - a class selector such as .intro beats h1, p, div, etc
* The universal selector and inherited values have a specificity of 0 - \*, body \* and similar have a zero specificity. Inherited values also have a specificity of 0

## Shortcuts

Property Shortcut
>property: top right bottom left

## Breakpoints

```CSS
/* Extra small devices (phones, 600px and down) */
@media only screen and (max-width: 600px) {
  .example {background: red;}
}

/* Small devices (portrait tablets and large phones, 600px and up) */
@media only screen and (min-width: 600px) {
  .example {background: green;}
}

/* Medium devices (landscape tablets, 768px and up) */
@media only screen and (min-width: 768px) {
  .example {background: blue;}
} 

/* Large devices (laptops/desktops, 992px and up) */
@media only screen and (min-width: 992px) {
  .example {background: orange;}
} 

/* Extra large devices (large laptops and desktops, 1200px and up) */
@media only screen and (min-width: 1200px) {
  .example {background: pink;}
}

/* If the screen size is in landscape, change background color to lightblue */
@media only screen and (orientation: landscape) {
  body {
    background-color: lightblue;
  }
}

/* If the screen size is 600px wide or less, hide the element */
@media only screen and (max-width: 600px) {
  div.example {
    display: none;
  }
}
```

## [Bootstrap Breakpoints](https://getbootstrap.com/docs/4.3/layout/overview/#responsive-breakpoints)

```CSS
/* Extra small devices (portrait phones, less than 576px) */
/* No media query for `xs` since this is the default in Bootstrap */

/* Small devices (landscape phones, 576px and up) */
@media (min-width: 576px) { ... }

/* Medium devices (tablets, 768px and up) */
@media (min-width: 768px) { ... }

/* Large devices (desktops, 992px and up) */
@media (min-width: 992px) { ... }

/* Extra large devices (large desktops, 1200px and up) */
@media (min-width: 1200px) { ... }
```

## Units

### Absolute Lengths

| Unit | Description                  |
| ---- | ---------------------------- |
| cm   | centimeters                  |
| mm   | millimeters                  |
| in   | inches (1in = 96px = 2.54cm) |
| px   | pixels (1px = 1/96th of 1in) |
| pt   | points (1pt = 1/72 of 1in)   |
| pc   | picas (1pc = 12 pt)          |

* note: Pixels (px) are relative to the viewing device. For low-dpi devices, 1px is one device pixel (dot) of the display. For printers and high resolution screens 1px implies multiple device pixels

### Relative Lengths

| Unit | Description                                                                               |
| ---- | ----------------------------------------------------------------------------------------- |
| em   | Relative to the font-size of the element (2em means 2 times the size of the current font) |
| ex   | Relative to the x-height of the current font (rarely used)                                |
| ch   | Relative to width of the "0" (zero)                                                       |
| rem  | Relative to font-size of the root element                                                 |
| vw   | Relative to 1% of the width of the viewport*                                              |
| vh   | Relative to 1% of the height of the viewport*                                             |
| vmin | Relative to 1% of viewport's* smaller dimension                                           |
| vmax | Relative to 1% of viewport's* larger dimension                                            |
| %    | Relative to the parent element                                                            |

\* Viewport = the browser window size. If the viewport is 50cm wide, 1vw = 0.5cm.

## Font Size

* 1em = 12pt = 16px = 100%

1. “Ems” (em): The “em” is a scalable unit that is used in web document media. An em is equal to the current font-size, for instance, if the font-size of the document is 12pt, 1em is equal to 12pt. Ems are scalable in nature, so 2em would equal 24pt, .5em would equal 6pt, etc. Ems are becoming increasingly popular in web documents due to scalability and their mobile-device-friendly nature.
2. Pixels (px): Pixels are fixed-size units that are used in screen media (i.e. to be read on the computer screen). One pixel is equal to one dot on the computer screen (the smallest division of your screen’s resolution). Many web designers use pixel units in web documents in order to produce a pixel-perfect representation of their site as it is rendered in the browser. One problem with the pixel unit is that it does not scale upward for visually-impaired readers or downward to fit mobile devices.
3. Points (pt): Points are traditionally used in print media (anything that is to be printed on paper, etc.). One point is equal to 1/72 of an inch. Points are much like pixels, in that they are fixed-size units and cannot scale in size.
4. Percent (%): The percent unit is much like the “em” unit, save for a few fundamental differences. First and foremost, the current font-size is equal to 100% (i.e. 12pt = 100%). While using the percent unit, your text remains fully scalable for mobile devices and for accessibility.

## References

**[w3schools](https://www.w3schools.com/css/)**  
**[Approximate Conversion from pt to px](https://reeddesign.co.uk/test/points-pixels.html)**  
**[Font Size](https://kyleschaeffer.com/css-font-size-em-vs-px-vs-pt-vs-percent)**  
**[Fluid Typography](https://css-tricks.com/snippets/css/fluid-typography/)**
