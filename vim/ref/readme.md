```javascript
var quill = new Quill('#editor', {
  modules: {
    toolbar: '#toolbar'
  },
  theme: 'snow'
});
```

```html
<link rel="stylesheet" href="node_modules/quill/dist/quill.bubble.css">
<link rel="stylesheet" href="node_modules/quill/dist/quill.core.css">
<link rel="stylesheet" href="node_modules/quill/dist/quill.snow.css">
<script src="node_modules/quill/dist/quill.min.js"></script>
<script src="node_modules/quill/dist/quill.core.js"></script>

<!-- viewport -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- .ico -->
<link rel="shortcut icon" href="http://example.com/myicon.ico" />
<!-- .png -->
<link rel="icon" type="image/png" href="http://example.com/image.png" />
```

REGULAR EXPRESSIONS
-------------------

## Anchors - ^ and $

```javascript
// 1. Matches any string that starts with The.
// ^The

// 2. Matches a string that ends with end.
// end$

// 3. Exact string match (starts and ends with The end);
// ^The end$

// 4. Matches any string that has the text roar in it.
// roar

/* Quantifiers - * + ? {} */

// 1. Matches a string that has ab followed by zero or more c.
// abc*

// 2. Matches a string that has ab followed by one or more c.
// abc+

// 3. Matches a string that has ab followed by zero or one c.
// abc?

```

|----|----------------|-----------------------------------------------------------------------|
| \d | digit          |                                                                       |
|----|----------------|-----------------------------------------------------------------------|
| \w | word character | letter lowercase, uppercase titlecase other modifier, decimal, number |
|----|----------------|-----------------------------------------------------------------------|
| \s | whitespace     |                                                                       |
|----|----------------|-----------------------------------------------------------------------|


