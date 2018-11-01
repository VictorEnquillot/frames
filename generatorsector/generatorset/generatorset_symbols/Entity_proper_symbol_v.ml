(** {3 The Functionalities for a Symbol for an Entity.}  *)

let nam_cod = "Entity_proper_symbol_v.ml";;

(** {6 Naming} *)

let name = function
  | Entity_proper_symbol_t.Entity_proper_with_one_son s -> 
      "entity_proper_with_one_son"
  | Entity_proper_symbol_t.Entity_proper_with_sons s -> 
      "entity_proper_with_sons"
;;

(** {6 String_offing_for_symbol} *)

let string_off = function
  | Entity_proper_symbol_t.Entity_proper_with_one_son s -> s
  | Entity_proper_symbol_t.Entity_proper_with_sons s -> s
;;

(** {6 Longnaming_for_symbol} *)

let longname sym_ent =
  Format.sprintf "Entity_proper_symbol_t.%s" (String.capitalize_ascii (name sym_ent))
;;

(** {6 Fullnaming_for_symbol} *)

let fullname sym_ent =
  Format.sprintf "%s \"%s\"" (longname sym_ent) (string_off sym_ent)
;;

(** {6 Comparing} *)

let compare sym_ent_1 sym_ent_2 =
  let sto_ent_1 = string_off sym_ent_1 in
  let sto_ent_2 = string_off sym_ent_2 in
  String.compare sto_ent_1 sto_ent_2
;;

(** {6 Extracting topsons} *)

(** {6 Extracting grandsons} *)

(** {6 Querying_for_symbol} *)

let is_entity_proper_with_one_son = function
  | Entity_proper_symbol_t.Entity_proper_with_one_son s -> true
  | _ -> false
;;

let is_entity_proper_with_sons = function
  | Entity_proper_symbol_t.Entity_proper_with_sons s -> true
  | _ -> false
;;

let is_entity_proper_with_one_son_of_string str = function
  | Entity_proper_symbol_t.Entity_proper_with_one_son s -> s = str
  | _ -> false
;;

let is_entity_proper_with_sons_of_string str = function
  | Entity_proper_symbol_t.Entity_proper_with_sons s -> s = str
  | _ -> false
;;

let is_entity_proper_symbol_of_string str = function
  | Entity_proper_symbol_t.Entity_proper_with_sons s -> s = str
  | Entity_proper_symbol_t.Entity_proper_with_one_son s -> s = str
;;

(** {6 Abbreviating} *)

let entity_proper_with_one_son str = Entity_proper_symbol_t.Entity_proper_with_one_son str;;

let entity_proper_with_sons str = Entity_proper_symbol_t.Entity_proper_with_sons str;;

(** {6 Making_for_symbol} *)

let make nam s = 
  match nam with 
  | "entity_proper_with_one_son" -> entity_proper_with_one_son s
  | "entity_proper_with_sons" -> entity_proper_with_sons s
  | _ ->
      failwith ("Not_Entity_proper_symbol:Entity_proper_symbol_v.ml:make")
;;

(** {6 Listing} *)

let entity_proper_symbol_list str =  (* alphabetic *)
    [entity_proper_with_one_son str;
     entity_proper_with_sons str]
;;

(** {6 Indexing} *)

let list_index_of_entity_proper_symbol sym_ent =
  let str = string_off sym_ent in
  1 + (List_v.index_of_element_of_list sym_ent (entity_proper_symbol_list str))
;;

let hash_index_of_entity_proper_symbol sym_ent =
  let str = string_off sym_ent in
  Hashtbl.hash str
;;
