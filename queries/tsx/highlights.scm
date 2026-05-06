;; extends

; HTML組み込みタグ (小文字) -> @tag.builtin (pink)
(jsx_opening_element
  name: (identifier) @tag.builtin
  (#lua-match? @tag.builtin "^[a-z]")
  (#set! priority 150))

(jsx_closing_element
  name: (identifier) @tag.builtin
  (#lua-match? @tag.builtin "^[a-z]")
  (#set! priority 150))

(jsx_self_closing_element
  name: (identifier) @tag.builtin
  (#lua-match? @tag.builtin "^[a-z]")
  (#set! priority 150))

; Reactコンポーネント (PascalCase) -> @tag (cyan)
(jsx_opening_element
  name: (identifier) @tag
  (#lua-match? @tag "^[A-Z]")
  (#set! priority 150))

(jsx_closing_element
  name: (identifier) @tag
  (#lua-match? @tag "^[A-Z]")
  (#set! priority 150))

(jsx_self_closing_element
  name: (identifier) @tag
  (#lua-match? @tag "^[A-Z]")
  (#set! priority 150))
