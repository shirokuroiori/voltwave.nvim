;; extends

; HTML組み込みタグ (小文字・kebab-case) -> @tag.builtin (pink)
((tag_name) @tag.builtin
  (#lua-match? @tag.builtin "^[a-z]")
  (#set! priority 150))

; Vueコンポーネント (PascalCase) -> @tag (cyan)
((tag_name) @tag
  (#lua-match? @tag "^[A-Z]")
  (#set! priority 151))
