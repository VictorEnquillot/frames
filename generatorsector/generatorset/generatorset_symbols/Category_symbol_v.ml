(** {3 The Functionalities for a Symbol for a Category.}  *)

let nam_cod = "Category_symbol_v.ml";;

(** {6 Aliasing} *)


(** {6 Making} *)

let make = function
  | "formula" -> Category_symbol_t.Formula
  | "mark" -> Category_symbol_t.Mark
  | "path" -> Category_symbol_t.Path
  | "property" -> Category_symbol_t.Property
  | "provider" -> Category_symbol_t.Provider
  | "symbol" -> Category_symbol_t.Symbol
  | "tag" -> Category_symbol_t.Tag
  | "value" -> Category_symbol_t.Value
  | "" -> Category_symbol_t.Empty
  | str -> Error_messages_v.print_fatal_error 
	nam_cod "make"
	"formula|mark|path|property|provider|symbol|tag|value"
	(">"^str^"<")
	"check or add it to menu"
;;

(** {6 Naming} *)

let name = function
  | Category_symbol_t.Any -> "any"              (*  a *)
  | Category_symbol_t.Formula -> "formula"      (*  f *)
  | Category_symbol_t.Mark -> "mark"            (*  m *)
  | Category_symbol_t.Path -> "path"            (*  p *)
  | Category_symbol_t.Property -> "property"    (*  w for what ? *)
  | Category_symbol_t.Provider -> "provider"    (*  r for retrieve ? *)
  | Category_symbol_t.Symbol -> "symbol"        (*  s *)
  | Category_symbol_t.Tag -> "tag"              (*  t *)
  | Category_symbol_t.Value -> "value"          (*  v *)
  | Category_symbol_t.Empty -> "empty"          (* for external entity *)
;;

let longname = name;;

let string_off sym_cat = "";;

let fullname sym_cat =
  Format.sprintf "%s \"%s\"" (longname sym_cat) (string_off sym_cat)
;;

(** {6 Querying} *)

let is_category_symbol_of_string = function
  | "any"
  | "formula" 
  | "mark" 
  | "path" 
  | "property" 
  | "provider" 
  | "symbol" 
  | "tag" 
  | "value" 
  | "" -> true
  | str -> false
;;

let is_any_off_category_symbol = function
  | Category_symbol_t.Any -> true
  | _ -> false
;;

let is_symbol_off_category_symbol = function
  | Category_symbol_t.Symbol -> true
  | _ -> false
;;

let is_mark_off_category_symbol = function
  | Category_symbol_t.Mark -> true
  | _ -> false
;;

let is_formula_off_category_symbol = function
  | Category_symbol_t.Formula -> true
  | _ -> false
;;

let is_tag_off_category_symbol = function
  | Category_symbol_t.Tag -> true
  | _ -> false
;;

let is_value_off_category_symbol = function
  | Category_symbol_t.Value -> true
  | _ -> false
;;

(** {6 Abbreviating} *)

let any =  Category_symbol_t.Any;;
let formula =  Category_symbol_t.Formula;;
let mark =  Category_symbol_t.Mark;;
let path =  Category_symbol_t.Path;;
let property =  Category_symbol_t.Property;;
let provider =  Category_symbol_t.Provider;;
let symbol =  Category_symbol_t.Symbol;;
let tag =  Category_symbol_t.Tag;;
let value =  Category_symbol_t.Value;;
let empty =  Category_symbol_t.Empty;;

(** {6 Listing} *)

let category_symbol_list () = 
[ 
  Category_symbol_t.Any;
  Category_symbol_t.Formula;
  Category_symbol_t.Mark;
  Category_symbol_t.Path;
  Category_symbol_t.Property;
  Category_symbol_t.Provider;
  Category_symbol_t.Symbol;
  Category_symbol_t.Tag;
  Category_symbol_t.Value;
  Category_symbol_t.Empty;
]
;;

(** {6 Indexing} *)

let list_index_of_category_symbol sym_cat =
  1 + (List_v.index_of_element_of_list sym_cat (category_symbol_list ()))
;;
