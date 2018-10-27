(** {3 The Functionalities for a Symbol for a Kind.}  *)

let nam_cod = "Kind_symbol_v.ml";;

(** {6 Making} *)

let make = function
  | "type" -> Kind_symbol_t.Kind_type
  | "type_private" -> Kind_symbol_t.Kind_type_private
  | "content" -> Kind_symbol_t.Kind_content
  | "description" -> Kind_symbol_t.Kind_description
  | str -> Error_messages_v.print_fatal_error 
	nam_cod "make"
	"kind_type|kind_type_private|kind_content|kind_calculation|kind_description"
	(">"^str^"<")
	"check or add it to menu"
;;

(** {6 Naming} *)

let name = function
  | Kind_symbol_t.Kind_type -> "type"  
  | Kind_symbol_t.Kind_type_private -> "type_private"
  | Kind_symbol_t.Kind_content -> "content"
  | Kind_symbol_t.Kind_calculation -> "calculation"
  | Kind_symbol_t.Kind_description -> "description"
;;

let longname sym_kin = 
  Format.sprintf "Kind_symbol_t.%s" 
    (String.capitalize (name sym_kin))
;;

let string_off sym_cat = "";;

let fullname sym_cat =
  Format.sprintf "%s \"%s\"" (longname sym_cat) (string_off sym_cat)
;;

(** {6 Querying} *)

let is_kind_symbol_of_string = function
  | "type" 
  | "type_private" 
  | "content" 
  | "calculation" 
  | "description" -> true
  | _ -> false
;;

let is_kind_type_private_off_kind_symbol = function
  | Kind_symbol_t.Kind_type_private -> true
  | _ -> false
;;

let is_kind_type_off_kind_symbol = function
  | Kind_symbol_t.Kind_type -> true
  | _ -> false
;;

let is_kind_content_off_kind_symbol = function
  | Kind_symbol_t.Kind_content -> true
  | _ -> false
;;

let is_kind_calculation_off_kind_symbol = function
  | Kind_symbol_t.Kind_calculation -> true
  | _ -> false
;;

let is_kind_description_off_kind_symbol = function
  | Kind_symbol_t.Kind_description -> true
  | _ -> false
;;

(** {6 Abbreviating} *)

let kind_type =  Kind_symbol_t.Kind_type;;
let kind_type_private =  Kind_symbol_t.Kind_type_private;;
let kind_content =  Kind_symbol_t.Kind_content;;
let kind_calculation =  Kind_symbol_t.Kind_calculation;;
let kind_description =  Kind_symbol_t.Kind_description;;

(** {6 Listing} *)

let kind_symbol_list () = 
[ 
  Kind_symbol_t.Kind_type;
  Kind_symbol_t.Kind_type_private;
  Kind_symbol_t.Kind_content;
  Kind_symbol_t.Kind_description;
]
;;

(** {6 Indexing} *)

let list_index_of_kind_symbol sym_kin =
  1 + (List_v.index_of_element_of_list sym_kin (kind_symbol_list ()))
;;
