(module cmark

;; exports
(commonmark->html)

(import scheme chicken foreign)
(foreign-declare "#include \"cmark.h\"")

(define CMARK_OPT_DEFAULT
  (foreign-value "CMARK_OPT_DEFAULT" int))

(define cmark-markdown-to-html
  (foreign-lambda c-string "cmark_markdown_to_html" c-string int int))

(define (commonmark->html input)
  (cmark-markdown-to-html input (string-length input) CMARK_OPT_DEFAULT))

)
