(module cmark

;; exports
(commonmark->html)

(import scheme chicken foreign)
(foreign-declare "#include \"cmark.h\"")

(define CMARK_OPT_DEFAULT (foreign-value "CMARK_OPT_DEFAULT" int))
(define CMARK_OPT_SAFE (foreign-value "CMARK_OPT_SAFE" int))

(define cmark-markdown-to-html
  (foreign-lambda c-string "cmark_markdown_to_html" c-string size_t int))

(define (commonmark->html input #!key (safe #t))
  (let ((opt (if safe CMARK_OPT_SAFE CMARK_OPT_DEFAULT)))
    (cmark-markdown-to-html input (string-length input) opt)))

)
