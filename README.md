You'll need libcmark installed, see https://github.com/jgm/cmark

```scheme
(use cmark)

(commonmark->html "# Hello world!")
;; => "<h1>Hello, world!</h1>\n"
```

Currently just a very thin wrapper around the most basic API, converting a
CommonMark string to a HTML string. It would be nice to add reading from
input-ports and look into whether it's easy to build SXML from the
cmark node iterator functions.
