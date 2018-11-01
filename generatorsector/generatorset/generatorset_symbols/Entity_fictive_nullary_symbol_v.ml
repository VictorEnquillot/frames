(** {3 The functionalities for a Symbol for an Entity Fictive Nullary *.}  *)

let nam_cod = "Entity_fictive_nullary_symbol_v.ml";;

(** {6 Naming} *)

let name = function 
  | Entity_fictive_nullary_symbol_t.Bare s -> "bare"
  | Entity_fictive_nullary_symbol_t.Ofstring s -> "ofstring"
;;

let string_off = function 
  | Entity_fictive_nullary_symbol_t.Bare s -> s
  | Entity_fictive_nullary_symbol_t.Ofstring s -> s
;;

let longname sym_efn = 
  Format.sprintf "Entity_fictive_nullary_symbol_t.%s" 
    (String.capitalize_ascii (name sym_efn))
;;

let fullname sym_efn =
  Format.sprintf "%s \"%s\"" (longname sym_efn) (string_off sym_efn)
;;

(** {6 Querying} *)

let is_bare = function
  | Entity_fictive_nullary_symbol_t.Bare s -> true
  | _ -> false
;;

let is_ofstring = function
  | Entity_fictive_nullary_symbol_t.Ofstring s -> true
  | _ -> false
;;

let is_bare_of_string str = function
  | Entity_fictive_nullary_symbol_t.Bare s -> s = str
  | _ -> false
;;

let is_ofstring_of_string str = function
  | Entity_fictive_nullary_symbol_t.Ofstring s -> s = str
  | _ -> false
;;

(** {6 Extracting} *)

(** {6 Abbreviating} *)

let bare s = Entity_fictive_nullary_symbol_t.Bare s;;
let ofstring s = Entity_fictive_nullary_symbol_t.Ofstring s;;

(** {6 Making} *)

let make nam s =
  match nam with
  | "bare" -> Entity_fictive_nullary_symbol_t.Bare s
  | "ofstring" -> Entity_fictive_nullary_symbol_t.Ofstring s
  | _ -> 
      failwith ("Not_Entity_fictive_nullary_symbol:Entity_fictive_nullary_symbol_v.ml:make")
;;

(** {6 Comparing} *)

let compare sym_efn_1 sym_efn_2 =
  let sto_efn_1 = string_off sym_efn_1 in
  let sto_efn_2 = string_off sym_efn_2 in
  String.compare sto_efn_1 sto_efn_2
;;

(** {6 Listing} *)

let entity_fictive_nullary_symbol_list str =  (* alphabetic *)
  [
   Entity_fictive_nullary_symbol_t.Bare str;
   Entity_fictive_nullary_symbol_t.Ofstring str;
 ]
;;

(** {6 Indexing} *)

let list_index_of_entity_fictive_nullary_symbol sym_efn =
  let str = string_off sym_efn in
  1 + (List_v.index_of_element_of_list sym_efn (entity_fictive_nullary_symbol_list str))
;;
