class: center, middle, inverse

# Lesson 3: HTML

---

layout: true

<div class="breadcrumb">3. HTML</div>

---

# Outline

1. Anatomy of a webpage
2. Tags
3. Project: your first webpage

---

## 1. Anatomy of a webpage

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Hello world!</title>
    </head>
    <body>
        <h1>Hello world!</h1>
*        OTHER STUFF GOES HERE
    </body>
</html>
```

---

background-image: url(http://i.imgur.com/L9rWlUF.png)

---

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Hello world!</title>
    </head>
    <body>
        <h1>Hello world!</h1>
*        <p>
*            This is a paragraph. This is <b>bold</b>, 
*            <u>underline</u>, and <i>italic</i>.
*        </p>
    </body>
</html>
```

---

background-image: url(http://i.imgur.com/V1SQGI3.png)

---

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Hello world!</title>
    </head>
    <body>
        <h1>Hello world!</h1>
        <p>
            This is a paragraph. This is <b>bold</b>, 
            <u>underline</u>, and <i>italic</i>.
        </p>
*        Here's a link to <a href="http://google.com">Google</a>.
    </body>
</html>
```

---

background-image: url(http://i.imgur.com/u0DVDyE.png)

---

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Hello world!</title>
    </head>
    <body>
        <h1>Hello world!</h1>
        <p>
            This is a paragraph. This is <b>bold</b>, 
            <u>underline</u>, and <i>italic</i>.
        </p>
        Here's a link to <a href="http://google.com">Google</a>.
*        <img src="http://placekitten.com/g/200/300" />
    </body>
</html>
```

---

background-image: url(http://i.imgur.com/dIIaZFB.png)

---

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Hello world!</title>
    </head>
    <body>
        <h1>Hello world!</h1>
        <p>
            This is a paragraph. This is <b>bold</b>, 
            <u>underline</u>, and <i>italic</i>.
        </p>
        Here's a link to <a href="http://google.com">Google</a>.
*        <br />
        <img src="http://placekitten.com/g/200/300" />
    </body>
</html>
```

---

background-image: url(http://i.imgur.com/lRjwodk.png)

---

## 2. Tags

```html
<a href="http://google.com">Google</a>.
```

--

* Opening tag: `<a ...>`
--

* Closing tag: `</a>`
--

* Attributes: `href="http://google.com"`
--

* Content: `Google`

---

#### Tags are nestable

```html
<a href="http://google.com">
    Google
</a>
```

---

#### Tags are nestable

```html
<a href="http://google.com">
    Google
*    <img src="http://placekitten.com/g/200/300" />
</a>
```

---

#### Tags are nestable

```html
<a href="http://google.com">
*    <b>Google</b>
    <img src="http://placekitten.com/g/200/300" />
</a>
```

---

#### Tags are nestable

```html
<a href="http://google.com">
*    <b><i>Google</i></b>
    <img src="http://placekitten.com/g/200/300" />
</a>
```

--

**Don't do this:**

```html
<b><i>Google</b></i>
```

---

Every HTML Tag: http://www.w3schools.com/tags/

Important ones:

---

* `html`
    * `head`
        * `title`: what shows up on top of your browser window
        * `style` (holds css), `link` (references external css), and `script` (holds or references javascript)
    * `body`
        * `div`: content container (*div*ider)
        * `span`: inline div
        * `h1`-`h6`: headers
        * `p`: paragraph
        * `img`: image
        * `br`: linebreak
        * `ul` (unordered list) and `li` (list item)
        * `form`, `button`, `label`, `textarea`, and `input`
        * `table`, `tr` (table row), `th` (table header), and `td` (table cell)
        * `iframe`: include another website in your page

---

Forbidden tags:

* `marquee`
* `blink`

<marquee><blink><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS75HzuEy488Z3-dbw20sZK40FOAQeeq24sCP5Td0IvPRFKR_CmJg"></blink></marquee>

---

#### More HTML resources

* [Code Academy](http://www.codecademy.com/en/tracks/web)
* Mozilla's [Learn HTML](https://developer.mozilla.org/en-US/learn/html)
* [HTML Dog](http://www.htmldog.com/guides/html/beginner/)
* Google "html tutorial"

---

class: center, middle, inverse

# Project

## Make a webpage about an animal.

<hr>

# Questions?