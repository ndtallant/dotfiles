; extends

(
    (string_content) @injection.content
    (#match? @injection.content "(SELECT|select).*(FROM|from)")
    (#set! injection.language "sql")
)
