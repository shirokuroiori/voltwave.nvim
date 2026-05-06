; extends

; __init__ などのダンダーメソッド → @constant.builtin (purple, priority 101 で @constructor.python を上書き)
((identifier) @constant.builtin
  (#match? @constant.builtin "^__.*__$")
  (#set! priority 101))
