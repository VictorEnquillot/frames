(** {3 The functionalities for a Symbol for an Entity External Constrained.}  *)

let nam_cod = "Entity_external_constrained_symbol_v.ml";;

(** {6 Aliasing} *)


(** {6 Naming} *)

let name = function
  | Entity_external_constrained_symbol_t.Index -> "index"
  | Entity_external_constrained_symbol_t.Ordinal -> "ordinal"
  | Entity_external_constrained_symbol_t.Float_positive -> "float_positive"
  | Entity_external_constrained_symbol_t.Float_zero_pi -> "float_zero_pi"
  | Entity_external_constrained_symbol_t.Float_zero_twopi -> "float_zero_twopi"
;;

let longname sym_exc = 
  Format.sprintf "Entity_external_constrained_symbol_t.%s" 
    (String.capitalize_ascii (name sym_exc))
;;

let string_off sym_ent = "";;

let fullname sym_cat =
  Format.sprintf "%s \"%s\"" (longname sym_cat) (string_off sym_cat)
;;

let is_entity_external_constrained_symbol_of_string = function
  | "float_positive" 
  | "float_zero_pi" 
  | "float_zero_twopi" 
  | "index" 
  | "ordinal" -> true
  | _ -> false
;;

let make = function
  | "float_positive" -> Entity_external_constrained_symbol_t.Float_positive
  | "float_zero_pi" -> Entity_external_constrained_symbol_t.Float_zero_pi
  | "float_zero_twopi" -> Entity_external_constrained_symbol_t.Float_zero_twopi
  | "index" -> Entity_external_constrained_symbol_t.Index
  | "ordinal" -> Entity_external_constrained_symbol_t.Ordinal
  | s -> failwith (Format.sprintf "Not_entity_external_constrained_symbol %s" s)
;;

(** {6 Listing} *)

let entity_external_constrained_symbol_list str =  (* alphabetic *)
  [
   Entity_external_constrained_symbol_t.Float_positive;
   Entity_external_constrained_symbol_t.Float_zero_pi;
   Entity_external_constrained_symbol_t.Float_zero_twopi;
   Entity_external_constrained_symbol_t.Index;
   Entity_external_constrained_symbol_t.Ordinal;
 ]
;;

(** {6 Indexing} *)

let list_index_of_entity_external_constrained_symbol sym_exc =
  let str = string_off sym_exc in
  1 + (List_v.index_of_element_of_list sym_exc (entity_external_constrained_symbol_list str))
;;
