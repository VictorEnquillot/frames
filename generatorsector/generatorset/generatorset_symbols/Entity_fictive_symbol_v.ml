(** {3 The Functionalities for a Symbol for an Entity Fictive.}  *)

let nam_cod = "Entity_fictive_symbol_v.ml";;

(** {6 Typing} *)

let name = function
  | Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol sym_efb ->
      Entity_fictive_basicnullary_symbol_v.name sym_efb
  | Entity_fictive_symbol_t.Entity_fictive_nullary_symbol sym_efn ->
      Entity_fictive_nullary_symbol_v.name sym_efn
;;

let string_off = function
  | Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol sym_efb ->
      Entity_fictive_basicnullary_symbol_v.string_off sym_efb
  | Entity_fictive_symbol_t.Entity_fictive_nullary_symbol sym_efn ->
      Entity_fictive_nullary_symbol_v.string_off sym_efn
;;

let longname sym_enf = 
  Format.sprintf "Entity_fictive_nullary_symbol_t.%s" 
    (String.capitalize (name sym_enf))
;;

let fullname sym_enf =
  Format.sprintf "%s \"%s\"" (longname sym_enf) (string_off sym_enf)
;;

(** {6 Querying} *)

let is_entity_fictive_basicnullary_symbol_off_entity_fictive_symbol = function
  | Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol _ -> true
  | _ -> false
;;

let is_entity_fictive_nullary_symbol_off_entity_fictive_symbol = function
  | Entity_fictive_symbol_t.Entity_fictive_nullary_symbol _ -> true
  | _ -> false
;;

(** {6 Extracting} *)

let entity_fictive_basicnullary_symbol_off_entity_fictive_symbol = function
  | Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol sym_efb -> sym_efb
  | sym_enf -> Error_messages_v.print_fatal_error nam_cod
	"entity_fictive_basicnullary_symbol_off_entity_fictive_symbol"
	"Entity_fictive_basicnullary_symbol"
	(Format.sprintf "%s" (name sym_enf))
	"Check"
;;

let entity_fictive_nullary_symbol_off_entity_fictive_symbol = function
  | Entity_fictive_symbol_t.Entity_fictive_nullary_symbol sym_efn -> sym_efn
  | sym_enf -> Error_messages_v.print_fatal_error nam_cod
	"entity_fictive_nullary_symbol_off_entity_fictive_symbol"
	"Entity_fictive_nullary_symbol"
	(Format.sprintf "%s" (name sym_enf))
	"Check"
;;

let is_bare sym_enf = 
  if not (is_entity_fictive_nullary_symbol_off_entity_fictive_symbol sym_enf)
  then false
  else
    begin
      let sym_efn = entity_fictive_nullary_symbol_off_entity_fictive_symbol sym_enf in
      Entity_fictive_nullary_symbol_v.is_bare sym_efn
    end
;;

let is_ofstring sym_enf = 
  if not (is_entity_fictive_nullary_symbol_off_entity_fictive_symbol sym_enf)
  then false
  else
    begin
      let sym_efn = entity_fictive_nullary_symbol_off_entity_fictive_symbol sym_enf in
      Entity_fictive_nullary_symbol_v.is_ofstring sym_efn
    end
;;

(** {6 Upgrading} *)

let entity_fictive_symbol_of_entity_fictive_basicnullary_symbol sym_efb =
  Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol sym_efb
;;

let entity_fictive_symbol_of_entity_fictive_nullary_symbol sym_efn =
  Entity_fictive_symbol_t.Entity_fictive_nullary_symbol sym_efn
;;


(** {6 Making} *)

let make nam s =
  try entity_fictive_symbol_of_entity_fictive_basicnullary_symbol 
      (Entity_fictive_basicnullary_symbol_v.make nam s)
  with Failure "Not_Entity_fictive_basicnullary_symbol:Entity_fictive_basicnullary_symbol_v.ml:make" ->
    try entity_fictive_symbol_of_entity_fictive_nullary_symbol 
	(Entity_fictive_nullary_symbol_v.make nam s)
    with Failure "Not_Entity_fictive_symbol:Entity_fictive_symbol_v.ml:make" ->
      failwith ("Entity_fictive_symbol:"^nam_cod^":make")
;;

(** {6 Listing} *)

let entity_fictive_symbol_list str = 
  let sym_efb_l = 
    Entity_fictive_basicnullary_symbol_v.entity_fictive_basicnullary_symbol_list 
      str 
  in
  let sym_efn_l = 
    Entity_fictive_nullary_symbol_v.entity_fictive_nullary_symbol_list 
      str
  in
  (List.map entity_fictive_symbol_of_entity_fictive_basicnullary_symbol sym_efb_l)
  @
    (List.map entity_fictive_symbol_of_entity_fictive_nullary_symbol sym_efn_l)
;;

(** {6 Indexing} *)

let list_index_of_entity_symbol sym_enp =
  let str = string_off sym_enp in
  1 + (List_v.index_of_element_of_list sym_enp (entity_fictive_symbol_list str))
;;
