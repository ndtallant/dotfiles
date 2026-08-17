; extends

(
    (string_content) @injection.content
    (#match? @injection.content "(SELECT|select).*(FROM|from)")
    (#set! injection.language "sql")
)
(
    (string_content) @injection.content
    (#match? @injection.content "(<p>|<a>|<html>|<body>|<article>)")
    (#set! injection.language "html")
)
