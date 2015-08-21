## Installation

The [cmark egg][cmarkegg] is available via the CHICKEN egg index:

```bash
chicken-install cmark
```

You **must** also install [cmark][cmark], since the egg uses the
`libcmark.so` shared library - If your package manager doesn't provide
a cmark package, you can install [from source][cmark] using the usual
`make && make install` dance.

## Usage

```scheme
(use cmark)

(commonmark->html "# Hello world!")

;; for embedded HTML support, turn off safe mode:
(commonmark->html "<script>alert('hello');</script>" safe: #f)
```
