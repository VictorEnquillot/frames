(** {3 The functionalities for a Symbol for an Entity Category.}  *)

let nam_cod = "category_symbol_v.ml";;

(** {6 Modules.} *)

module Cts_t = Category_symbol_t
module Erm_v = Error_messages_v

(** {6 Making.} *)

let make = function
  | "symbol" -> Cts_t.Symbol_symbol
  | "path" -> Cts_t.Path_symbol
  | "tag" -> Cts_t.Tag_symbol
  | "formula" -> Cts_t.Formula_symbol
  | "provider" -> Cts_t.Provider_symbol
  | "value" -> Cts_t.Value_symbol
  | "empty" -> Cts_t.Empty
  | s -> Erm_v.print_fatal_error nam_cod
	"make"
	"symbol|path|tag|formula|provider|value|empty"
	(Format.sprintf ">%s<" s) "check"
;;

(** {6 Displaying.} *)

let name = function
  | Cts_t.Symbol_symbol -> "symbol"
  | Cts_t.Path_symbol -> "path"
  | Cts_t.Tag_symbol -> "tag"
  | Cts_t.Formula_symbol -> "formula"
  | Cts_t.Provider_symbol -> "provider"
  | Cts_t.Value_symbol -> "value"
  | Cts_t.Empty -> ""
;;

let category_symbol = Cts_t.Symbol_symbol;;
let category_path = Cts_t.Path_symbol;;
let category_tag = Cts_t.Tag_symbol;;
let category_formula = Cts_t.Formula_symbol;;
let category_provider = Cts_t.Provider_symbol;;
let category_value = Cts_t.Value_symbol;;
let category_empty = Cts_t.Empty;;

