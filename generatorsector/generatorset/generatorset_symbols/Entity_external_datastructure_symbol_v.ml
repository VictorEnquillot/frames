(** {3 The functionalities for a Symbol for an Entity External Datastructure.}  *)

let nam_cod = "Entity_external_datastructure_symbol_v.ml";;

(** {6 Naming} *)

let name = function
  | Entity_external_datastructure_symbol_t.Recursive _ ->
      "entity_external_datastructure_recursive"
  | Entity_external_datastructure_symbol_t.Tuple _ ->
      "entity_external_datastructure_tuple"
  | Entity_external_datastructure_symbol_t.Tuple_recursive _ ->
      "entity_external_datastructure_tuple_recursive"
;;

let string_off = function
  | Entity_external_datastructure_symbol_t.Recursive s -> s
  | Entity_external_datastructure_symbol_t.Tuple s -> s
  | Entity_external_datastructure_symbol_t.Tuple_recursive s -> s
;;

let longname sym_exd = 
  Format.sprintf "Entity_external_datastructure_symbol_t.%s" 
    (String.capitalize_ascii (name sym_exd))
;;

let fullname sym_exd =
  Format.sprintf "%s \"%s\"" (longname sym_exd) (string_off sym_exd)
;;

(** {6 Querying} *)

let is_recursive str = 
  let low_str = String.lowercase_ascii str in
  match low_str with 
  | "list_caml"
  | "list_frames"
  | "tree" -> true
  | _ -> false
;;

let is_tuple str = 
  let low_str = String.lowercase_ascii str in
  match low_str with 
  | "couple_caml" 
  | "doublet" 
  | "doublet_list"
  | "doublet_tree"
  | "duo" 
  | "singlet" 
  | "trio" 
  | "triplet" -> true
  | _ -> false
;;

let is_tuple_recursive str = 
  let low_str = String.lowercase_ascii str in
  match low_str with 
  | "capped_list"
  | "capped_tree"
  | "tree_footed_capped"
  | "tree_leafed"
  | "tree_leafed_capped"
  | "triplet_list" -> true
  | _ -> false
;;

let is_entity_external_datastructure_symbol_of_string str =
  (is_recursive str) || (is_tuple str) || (is_tuple_recursive str)
;;

(** {6 Abbreviating} *)

let recursive s = Entity_external_datastructure_symbol_t.Recursive s;;
let tuple s = Entity_external_datastructure_symbol_t.Tuple s;;
let tuple_recursive s = Entity_external_datastructure_symbol_t.Tuple_recursive s;;

(** {6 Making} *)

let make str = 
  let low_str = String.lowercase_ascii str in
  match low_str with
  | s when is_recursive str ->

      Entity_external_datastructure_symbol_t.Recursive str

  | s when is_tuple str ->

      Entity_external_datastructure_symbol_t.Tuple str

  | s when is_tuple_recursive str ->

      Entity_external_datastructure_symbol_t.Tuple_recursive str

  | str -> Error_messages_v.print_fatal_error nam_cod "make" 
        (Format.sprintf "string >%s< were a defined Entity_external_datastructure_symbol" str)
        "it is NOT defined" "Check or add it"
;;

(** {6 Listing} *)

let entity_external_datastructure_symbol_list str =  (* alphabetic *)
  [
   Entity_external_datastructure_symbol_t.Recursive str;
   Entity_external_datastructure_symbol_t.Tuple str;
   Entity_external_datastructure_symbol_t.Tuple_recursive str;
 ]
;;

(** {6 Indexing} *)

let list_index_of_entity_external_datastructure_symbol sym_exd =
  let str = string_off sym_exd in
  1 + (List_v.index_of_element_of_list sym_exd (entity_external_datastructure_symbol_list str))
;;
