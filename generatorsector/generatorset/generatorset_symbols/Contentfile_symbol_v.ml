(** {3 The Functionalities for Symbol for a Content of a Camlfile}  *)

let nam_cod = "Contentfile_symbol_v.ml";;

(** {6 Aliasing} *)


(** {6 Making} *)

let make = function 
  | "type_alone" -> Contentfile_symbol_t.Type_alone
  | "type_n_value" -> Contentfile_symbol_t.Type_n_value
  | "value_alone" -> Contentfile_symbol_t.Value_alone
  | str -> Error_messages_v.print_fatal_error nam_cod "make"
	"type_alone|value_alone"
	str 
	"Check or add it to menu"

(** {6 Naming} *)

let name = function 
  | Contentfile_symbol_t.Type_alone -> "type_alone"
  | Contentfile_symbol_t.Type_n_value -> "type_n_value"
  | Contentfile_symbol_t.Value_alone -> "value_alone"
;;

let longname = name;;

let string_off sym_cof = "";;

let fullname sym_cof =
  Format.sprintf "%s \"%s\"" (longname sym_cof) (string_off sym_cof)
;;

(** {6 Querying} *)

let is_contentfile_symbol_of_string = function
  | "type_alone" 
  | "type_n_value" 
  | "value_alone" -> true
  | _ -> false
;;

let is_type_alone = function
  | Contentfile_symbol_t.Type_alone -> true
  | _ -> false
;;
    
let is_type_n_value = function
  | Contentfile_symbol_t.Type_n_value -> true
  | _ -> false
;;

let is_value_alone = function
  | Contentfile_symbol_t.Value_alone -> true
  | _ -> false
;;

(** {6 Abbreviating} *)

let type_alone = Contentfile_symbol_t.Type_alone;; 
let type_n_value = Contentfile_symbol_t.Type_n_value
let value_alone = Contentfile_symbol_t.Value_alone

(** {6 Documenting} *)

let statustype_symbol_of_contentfile_symbol = function
  | Contentfile_symbol_t.Type_alone 
  | Contentfile_symbol_t.Value_alone ->  Statustype_symbol_v.unconstrained
  | Contentfile_symbol_t.Type_n_value -> Statustype_symbol_v.constrained
;;

(** {6 Listing} *)

let contentfile_symbol_list () = 
[ 
  Contentfile_symbol_t.Type_alone;
  Contentfile_symbol_t.Type_n_value;
  Contentfile_symbol_t.Value_alone;
]
;;

(** {6 Indexing} *)

let list_index_of_contentfile_symbol sym_cof =
  1 + (List_v.index_of_element_of_list sym_cof (contentfile_symbol_list ()))
;;
