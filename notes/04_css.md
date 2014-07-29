class: center, middle, inverse

# Lesson 4: CSS

---

layout: true

<div class="breadcrumb">4. CSS</div>

---

# Outline

1. What is CSS?
2. CSS Properties
3. CSS Selectors
4. Cheating: just use Bootstrap
5. Project: 

---

# 1. What is CSS?

--

* Cascading Style Sheets
--

* add colors, change fonts, and alter position of html elements
--

* make your HTML pretty with minimal work!

---

Without CSS:

```html
<font size="20" color="red">
  <h1>Cats</h1>
</font>
<font size="10" color="blue">
  <p>Cats are awesome</p>
</font>

<font size="20" color="red">
  <h1>Dogs</h1>
</font>
<font size="10" color="blue">
  <p>Dogs are alright</p>
</font>
```

---

background-image: url(http://i.imgur.com/ED1Okzj.png)

---

With CSS: 

```html

<style type="text/css">
*  h1{
*    font-family: verdana;
*    color: red;
*  }
*
*  p{
*    font-size: 18pt;
*    color: blue;
*  }
</style>

<h1>Cats</h1>
<p>Cats are awesome</p>

<h1>Dogs</h1>
<p>Dogs are aright</p>

```

---

background-image: url(http://i.imgur.com/dD6aOrE.png)

---

If we want to change the color of all the `h1`s without css, we'd have to do it all over our web page:

```html
*<font size="20" color="red">
  <h1>Cats</h1>
</font>
<font size="10" color="blue">
  <p>Cats are awesome</p>
</font>

*<font size="20" color="red">
  <h1>Dogs</h1>
</font>
<font size="10" color="blue">
  <p>Dogs are alright</p>
</font>
```

But with css, we just make the change once:

```css
h1{
  font-family: verdana;
*  color: yellow;
}
```

---

## CSS Zen Garden

A website that uses the exact same html, but lets you change the css: http://csszengarden.com

---

background-image: url(http://i.imgur.com/0yw9TaS.jpg)

---

background-image: url(http://i.imgur.com/SSeKLHi.png)

---

background-image: url(http://i.imgur.com/kcQ0uIz.png)

---

# 2. CSS Properties

All of them: http://www.w3schools.com/cssref/default.asp

Important ones:

* [`font-family`](http://www.w3schools.com/cssref/pr_font_font-family.asp)
* [`font-size`](http://www.w3schools.com/cssref/pr_font_font-size.asp)
* [`background-image`](http://www.w3schools.com/cssref/pr_background-image.asp)
* [`height`](http://www.w3schools.com/cssref/pr_dim_height.asp)
* [`width`](http://www.w3schools.com/cssref/pr_dim_width.asp)
* [`border`](http://www.w3schools.com/cssref/pr_border.asp)
* [`padding`](http://www.w3schools.com/cssref/pr_padding.asp)
* [`margin`](http://www.w3schools.com/cssref/pr_margin.asp)
* [`color`](http://www.w3schools.com/cssref/pr_text_color.asp)
* [`background-color`](http://www.w3schools.com/cssref/pr_background-color.asp)

---

### Fonts

.left-column[

```html
<style>
  p{
    font-family: fantasy;
    font-size: 18pt;
  }
</style>

<p>Hello world!</p>
```
]

.right-column[

<p style="font-family: fantasy; font-size: 18pt;">Hello world!</p>
<div></div>

]

.footnote[
Web safe font faces: http://www.w3schools.com/cssref/css_websafe_fonts.asp
]

---

### Background image and size

.left-column[

```html
<style>
  p{
    background-image: 
      url('http://i.imgur.com/dMoAhEu.png');
    height: 400px;
    width: 200px;
  }
</style>

<p>Hello world!</p>
```
]

.right-column[

<p style="background-image: url('http://i.imgur.com/dMoAhEu.png'); height: 400px; width: 200px;">Hello world!</p>
<div></div>

]

---

### Border, padding, and margin

.left-column[

```html
<style>
  p{
    border: 2px solid #000;
    padding: 10px;
    margin: 20px;
  }
</style>

<p>Hello world!</p>
```
]

.right-column[

<p style="border: 2px solid #000; padding: 10px; margin: 20px;">Hello world!</p>
<div></div>

]

---

### Border, padding, and margin

.left-column[

```html
<style>
  p{
    border: 2px solid #000;
    padding: 10px;
    margin: 30px;
  }
</style>

<p>Hello world!</p>
```
]

.right-column[

<p style="border: 2px solid #000; padding: 10px; margin: 30px;">Hello world!</p>
<div></div>

]

---

### Border, padding, and margin

.left-column[

```html
<style>
  p{
    border: 2px solid #000;
    padding: 5px;
    margin: 30px;
  }
</style>

<p>Hello world!</p>
```
]

.right-column[

<p style="border: 2px solid #000; padding: 5px; margin: 30px;">Hello world!</p>
<div></div>

]

--

![](http://i.imgur.com/69l9SDW.png)

---

### Colors

.left-column[

```html
<style>
  p{
    color: #F00;
    background-color: #00F;
  }
</style>

<p>Hello world!</p>
```
]

.right-column[

<p style="color: #F00; background-color: #00F">Hello world!</p>
<div></div>

]

---

### A note on color

Colors like `#F00` are called **hex codes**.

--

* <code style="color: white; background-color: #F00 !important">#F00</code>: red
--

* <code style="color: white; background-color: #0F0 !important">#0F0</code>: green
--

* <code style="color: white; background-color: #00F !important">#00F</code>: blue
--

* <code style="color: black; background-color: #FF0 !important">#FF0</code>: red + green = yellow
--

* <code style="color: white; background-color: #F0F !important">#F0F</code>: red + blue = purple
--

* <code style="color: black; background-color: #0FF !important">#0FF</code>: green + blue = cyan

--

16 shades of red: <code style="color: white; background-color: #F00 !important">#F00</code>
<code style="color: white; background-color: #E00 !important">#E00</code>
<code style="color: white; background-color: #D00 !important">#D00</code>
<code style="color: white; background-color: #C00 !important">#C00</code>
<code style="color: white; background-color: #B00 !important">#B00</code>
<code style="color: white; background-color: #A00 !important">#A00</code>
<code style="color: white; background-color: #900 !important">#900</code>
<code style="color: white; background-color: #800 !important">#800</code>
<code style="color: white; background-color: #700 !important">#700</code>
<code style="color: white; background-color: #600 !important">#600</code>
<code style="color: white; background-color: #500 !important">#500</code>
<code style="color: white; background-color: #400 !important">#400</code>
<code style="color: white; background-color: #300 !important">#300</code>
<code style="color: white; background-color: #200 !important">#200</code>
<code style="color: white; background-color: #100 !important">#100</code>
<code style="color: white; background-color: #000 !important">#000</code>

--

Generate them at http://www.colorpicker.com/ or in the chrome web inspector.

---

# 3. CSS Selectors

All of them: http://www.w3schools.com/cssref/css_selectors.asp

---

.left-column[
To style this:
```html
<div class="number" id="one">
  One
</div>
```

You can use any of these:

```css
div{
 background-color: #FF0; 
}

.number{
  background-color: #FF0;
}

#one{
  background-color: #FF0;
}
```
]

.right-column[
<style>
  #one{
    background-color: #FF0;
  }
</style>

<div id="one">
  One
</div>
]


---

#### Class and id selectors

.left-column[
```html
<style>
  .number{
    padding: 10px;
    border: 2px dotted #F00;
  }

  #one{
    background-color: #FF0;
  }

  #two{
    background-color: #F0F;
  }
</style>

<div>Regular div</div>
<div class="number" id="one">
  One
</div>
<div class="number" id="two">
  Two
</div>
```
]

.right-column[
<style>
  .number{
    padding: 10px;
    border: 2px dotted #000;
  }

  #one{
    background-color: #FF0;
  }

  #two{
    background-color: #F0F;
  }
</style>

<div>Regular div</div>
<div class="number" id="one">
  One
</div>
<div class="number" id="two">
  Two
</div>
]


---

#### Child selector

.left-column[
```html
<style>
*  #three p{
    background-color: #FF0;
  }
</style>

<p>Regular p</p>
<div id="three">
  <p>Child p</p>
</div>
```
]

.right-column[
<style>
  lol, #child #three p{
    background-color: #FF0;
  }
</style>
<div id="child">
  <p>Regular p</p>
  <div id="three">
    <p>Child p</p>
  </div>
</div>
]

---

#### Multiple selector

.left-column[
```html
<style>
*  p, span {
    background-color: #F0F;
  }
</style>

<p>Regular p</p>
<div id="three">
  <p>Child p</p>
</div>
<span>span</span>
<b>bold</b>
```
]

.right-column[
<style>
asdf, #multiple p, #multiple span {
  background-color: #F0F;
}
</style>
<div id="multiple">
  <p>Regular p</p>
  <div id="three">
    <p>Child p</p>
  </div>
  <span>span</span>
  <b>bold</b>
</div>
]

---

#### Pseudo selector

.left-column[
```html
<style>
*  a:hover{
    color: #fff;
    background-color: #000;
  }
</style>

<a href="http://google.com">
  Google
</a>
```
]

.right-column[
<style>
lol, #pseudo a:hover{
  color: white;
  background-color: black;
}
</style>
<div id="pseudo">
  <a href="http://google.com">
    Google
  </a>
</div> 
]

---

#### Wildcard selector

.left-column[
```html
<style>
  #toast{
    border: 4px solid red;
  }
*  #toast *{
    color: #fff;
    background-color: #000;
  }
</style>

<span>Span 1</span>
<b>Bold 1</b>
<i>Italic 1</i>
<div id="toast">
  <span>Span 2</span>
  <b>Bold 2</b>
  <i>Italic 2</i>
</div>
```
]

.right-column[
<style>
div#toast{
  border: 4px solid red;
}
div#toast *{
  color: #fff;
  background-color: #000;
}
</style>
<div id="wildcard">
  <span>Span 1</span>
  <b>Bold 1</b>
  <i>Italic 1</i>
  <div id="toast">
    <span>Span 2</span>
    <b>Bold 2</b>
    <i>Italic 2</i>

  </div>
</div> 
]

---

# 4. Twitter Bootstrap

--

* Twitter Bootstrap is a popular **CSS framework**
--

* they already wrote *really good looking* CSS for you

--

Designing things look good is really hard. The best way to learn is to try to copy things you think look good.

---

background-image: url(http://i.imgur.com/xmHHqez.png)

---

background-image: url(http://i.imgur.com/K1nOoWG.png)

---

To use Bootstrap, include these lines in your `head`:

```html
<link rel="stylesheet" 
  href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" 
  href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
```

--

Then copy the HTML of one of their examples: http://getbootstrap.com/getting-started/#examples

```html
<body>
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        ...stuff...
      </div>
      <div class="col-md-6">
        ...stuff...
      </div>
    </div>
  </div>
</body>
```

---

class: center, middle, inverse

# Project:

## Make your website look better 
## with CSS

<hr />

## Questions?