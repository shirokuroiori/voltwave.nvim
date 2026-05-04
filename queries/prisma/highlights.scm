; extends


; プリミティブ型 → @type.builtin (cyan)
(column_type (identifier) @type.builtin
  (#any-of? @type.builtin "Int" "String" "Boolean" "DateTime" "Float" "Decimal" "BigInt" "Json" "Bytes")
  (#set! priority 200))

; ユーザー定義モデル型 → @type (purple)
(column_type (identifier) @type (#set! priority 101))

; model/type/enum/view/generator 宣言名 → @type.definition
(model_declaration (identifier) @type.definition)
(type_declaration (identifier) @type.definition)
(enum_declaration (identifier) @type.definition)
(view_declaration (identifier) @type.definition)
(generator_declaration (identifier) @type.definition)
(datasource_declaration (identifier) @type.definition)

; @@ ブロック属性全体 → @attribute (@@マーカーを含む)
(block_attribute_declaration) @attribute

; @@ ブロック属性の名前部分 → @function (上書き)
(block_attribute_declaration
  [(call_expression) (identifier) (member_expression)] @function)

; relation引数の : → @punctuation.delimiter
(type_expression ":" @punctuation.delimiter (#set! priority 101))

; type_expression の最初の識別子（キー）→ @variable.parameter (orange)
(type_expression . (identifier) @variable.parameter (#set! priority 101))

; 配列内のフィールド参照 → @variable.member (userId, id など)
(type_expression (array (identifier) @variable.member) (#set! priority 101))

; 引数内の関数呼び出し → @function.builtin (cyan: autoincrement, uuid など)
(arguments (call_expression (identifier) @function.builtin (#set! priority 101)))

; スカラー値の識別子 → @variable.member (Cascade など)
(type_expression (identifier) (identifier) @variable.member (#set! priority 101))
