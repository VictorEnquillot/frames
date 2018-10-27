(** {3 The Functionalities for a Symbol for an Entity.}  *)

let nam_cod = "Entity_symbol_v.ml";;

(** {6 Naming} *)

let name = function
  | Entity_symbol_t.Entity_external_symbol s -> 
      Entity_external_symbol_v.name s
  | Entity_symbol_t.Entity_fictive_symbol s -> 
      Entity_fictive_symbol_v.name s
  | Entity_symbol_t.Entity_proper_symbol s -> 
      Entity_proper_symbol_v.name s
;;

(** {6 String_offing_for_symbol} *)

let string_off = function
  | Entity_symbol_t.Entity_external_symbol s -> 
      Entity_external_symbol_v.string_off s
  | Entity_symbol_t.Entity_fictive_symbol s -> 
      Entity_fictive_symbol_v.string_off s
  | Entity_symbol_t.Entity_proper_symbol s -> 
      Entity_proper_symbol_v.string_off s
;;

(** {6 Longnaming_for_symbol} *)

let longname sym_ent =
  Format.sprintf "Entity_symbol_t.%s" (String.capitalize (name sym_ent))
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

let entity_external_symbol_off_entity_symbol = function
  | Entity_symbol_t.Entity_external_symbol sym_enx -> sym_enx
  | sym_enx -> Error_messages_v.print_fatal_error nam_cod
	"entity_external_symbol_off_entity_symbol"
	"Entity_external_symbol"
	(Format.sprintf "%s" (name sym_enx))
	"Check"
;;

let entity_fictive_symbol_off_entity_symbol = function
  | Entity_symbol_t.Entity_fictive_symbol sym_enf -> sym_enf
  | sym_enf -> Error_messages_v.print_fatal_error nam_cod
	"entity_fictive_symbol_off_entity_symbol"
	"Entity_fictive_symbol"
	(Format.sprintf "%s" (name sym_enf))
	"Check"
;;

let entity_proper_symbol_off_entity_symbol = function
  | Entity_symbol_t.Entity_proper_symbol sym_enp -> sym_enp
  | sym_enp -> Error_messages_v.print_fatal_error nam_cod
	"entity_proper_symbol_off_entity_symbol"
	"Entity_proper_symbol"
	(Format.sprintf "%s" (name sym_enp))
	"Check"
;;

(** {6 Extracting grandsons} *)

let entity_fictive_nullary_symbol_off_entity_symbol sym_ent =
  let sym_enf = entity_fictive_symbol_off_entity_symbol sym_ent in
  Entity_fictive_symbol_v.entity_fictive_nullary_symbol_off_entity_fictive_symbol sym_enf
;;

let entity_fictive_basicnullary_symbol_off_entity_symbol sym_ent =
  let sym_enf = entity_fictive_symbol_off_entity_symbol sym_ent in
  Entity_fictive_symbol_v.entity_fictive_basicnullary_symbol_off_entity_fictive_symbol sym_enf
;;

let entity_external_datastructure_symbol_off_entity_symbol sym_ent =
  let sym_enx = entity_external_symbol_off_entity_symbol sym_ent in
  Entity_external_symbol_v.entity_external_datastructure_symbol_off_entity_external_symbol sym_enx
;;

(** {6 Querying_for_symbol_topson_notleaf of_string} *)

let is_entity_external_symbol_of_string s =
  Entity_external_symbol_v.is_entity_external_symbol_of_string s
;;

let is_entity_external_datastructure_symbol_of_string s =
  Entity_external_symbol_v.is_entity_external_datastructure_symbol_of_string s
;;

let is_entity_external_constrained_symbol_of_string s =
  Entity_external_symbol_v.is_entity_external_constrained_symbol_of_string s
;;

let is_entity_external_tool_symbol_of_string s =
  Entity_external_symbol_v.is_entity_external_tool_symbol_of_string s
;;

let is_entity_external_symbol_of_string s =
  Entity_external_symbol_v.is_entity_external_symbol_of_string s
;;

let is_entity_proper_symbol_of_string s =
  Entity_proper_symbol_v.is_entity_proper_symbol_of_string s
;;

(** {6 Querying_for_symbol_topson_bare} *)

(**
let is_entity_xbare = function
  | Entity_symbol_t.Entity_xbare -> true
  | _ -> false
;;
**)

(** {6 Querying_for_symbol_topson_ofstring} *)
(** {6 Querying_for_symbol_topson_notleaf} *)

let is_entity_external_symbol_off_entity_symbol = function
  | Entity_symbol_t.Entity_external_symbol _ -> true
  | _ -> false
;;

let is_entity_fictive_symbol_off_entity_symbol = function
  | Entity_symbol_t.Entity_fictive_symbol _ -> true
  | _ -> false
;;

let is_entity_proper_symbol_off_entity_symbol = function
  | Entity_symbol_t.Entity_proper_symbol _ -> true
  | _ -> false
;;

(** {6 Querying_for_symbol_grandson_notleaf} *)

let is_entity_fictive_basicnullary_symbol_off_entity_symbol sym_ent =
  if not (is_entity_fictive_symbol_off_entity_symbol sym_ent)
  then false
  else
    begin
      let sym_enf = entity_fictive_symbol_off_entity_symbol sym_ent in
      Entity_fictive_symbol_v.is_entity_fictive_basicnullary_symbol_off_entity_fictive_symbol sym_enf
    end
;;

let is_entity_fictive_nullary_symbol_off_entity_symbol sym_ent =
  if not (is_entity_fictive_symbol_off_entity_symbol sym_ent)
  then false
  else
    begin
      let sym_enf = entity_fictive_symbol_off_entity_symbol sym_ent in
      Entity_fictive_symbol_v.is_entity_fictive_nullary_symbol_off_entity_fictive_symbol sym_enf
    end
;;

let is_top_has_no_leaf sym_ent =
    Utilities_v.not_yet_implemented nam_cod "is_top_has_no_leaf"
;;

let is_top_has_some_leaf sym_ent =
    Utilities_v.not_yet_implemented nam_cod "is_top_has_some_leaf"
;;

let is_bare sym_ent = 
  if not (is_entity_fictive_symbol_off_entity_symbol sym_ent)
  then false
  else
    begin
      let sym_enf = entity_fictive_symbol_off_entity_symbol sym_ent in
      Entity_fictive_symbol_v.is_bare sym_enf
    end
;;

let is_ofstring sym_ent = 
  if not (is_entity_fictive_symbol_off_entity_symbol sym_ent)
  then false
  else
    begin
      let sym_enf = entity_fictive_symbol_off_entity_symbol sym_ent in
      Entity_fictive_symbol_v.is_ofstring sym_enf
    end
;;

let is_entity_proper_with_one_son sym_ent = 
  if not (is_entity_proper_symbol_off_entity_symbol sym_ent)
  then false
  else
    begin
      let sym_enp = entity_proper_symbol_off_entity_symbol sym_ent in
      Entity_proper_symbol_v.is_entity_proper_with_one_son sym_enp
    end
;;

let is_entity_proper_with_sons sym_ent = 
  if not (is_entity_proper_symbol_off_entity_symbol sym_ent)
  then false
  else
    begin
      let sym_enp = entity_proper_symbol_off_entity_symbol sym_ent in
      Entity_proper_symbol_v.is_entity_proper_with_sons sym_enp
    end
;;

(** {6 Upgrading} *)

let entity_symbol_of_entity_external_symbol sym_enx = 
  Entity_symbol_t.Entity_external_symbol sym_enx
;; 

let entity_symbol_of_entity_fictive_symbol sym_enf = 
  Entity_symbol_t.Entity_fictive_symbol sym_enf
;; 

let entity_symbol_of_entity_fictive_basicnullary_symbol sym_efb = 
  let sym_enf = 
    Entity_fictive_symbol_v.entity_fictive_symbol_of_entity_fictive_basicnullary_symbol sym_efb
  in
  entity_symbol_of_entity_fictive_symbol sym_enf 
;; 

let entity_symbol_of_entity_fictive_nullary_symbol sym_efn = 
  let sym_enf = 
    Entity_fictive_symbol_v.entity_fictive_symbol_of_entity_fictive_nullary_symbol sym_efn
  in
  entity_symbol_of_entity_fictive_symbol sym_enf 
;; 

let entity_symbol_of_entity_proper_symbol sym_enp = 
  Entity_symbol_t.Entity_proper_symbol sym_enp
;; 

let entity_symbol_of_entity_external_datastructure_symbol sym_exd =
  let sym_enx = 
    Entity_external_symbol_v.entity_external_symbol_of_entity_external_datastructure_symbol sym_exd 
  in
  entity_symbol_of_entity_external_symbol sym_enx
;; 

(** {6 Abbreviating} *)

let entity_proper str = Entity_symbol_t.Entity_proper_symbol str;;

let bare str = entity_symbol_of_entity_fictive_nullary_symbol (Entity_fictive_nullary_symbol_v.bare str);;

let ofstring str = entity_symbol_of_entity_fictive_nullary_symbol (Entity_fictive_nullary_symbol_v.ofstring str);;

let basicnullary bas str = entity_symbol_of_entity_fictive_basicnullary_symbol (Entity_fictive_basicnullary_symbol_v.make bas str);;

(** {6 Making_for_symbol} *)

let make nam s = 
  try entity_symbol_of_entity_proper_symbol 
      (Entity_proper_symbol_v.make nam s)
  with 
  | Failure "Not_Entity_proper_symbol:Entity_proper_symbol_v.ml:make" ->
      
      try entity_symbol_of_entity_fictive_symbol 
	  (Entity_fictive_symbol_v.make nam s)
      with 
      | Failure "Not_Entity_fictive_symbol:Entity_fictive_symbol_v.ml:make" 
      | Failure "Not_Entity_fictive_nullary_symbol:Entity_fictive_nullary_symbol_v.ml:make" ->
	  
	  try entity_symbol_of_entity_external_symbol 
	      (Entity_external_symbol_v.make nam s)
	  with Failure "Not_Entity_external_symbol:Entity_external_symbol_v.ml:make" ->
	    
	    Error_messages_v.print_fatal_error nam_cod "make"
	      (Format.sprintf "strings %s %s represent an existing entity_symbol" nam s)
	      "it does not exists" "Check" 
;;

(** {6 Listing} *)

let entity_symbol_list str =  (* alphabetic *)
  let sym_enf_l = Entity_fictive_symbol_v.entity_fictive_symbol_list str in
  let sym_enx_l = Entity_external_symbol_v.entity_external_symbol_list str in
  let sym_enp_l = Entity_proper_symbol_v.entity_proper_symbol_list str in

    (List.map entity_symbol_of_entity_fictive_symbol sym_enf_l)
  @
    (List.map entity_symbol_of_entity_external_symbol sym_enx_l)

  @
    (List.map entity_symbol_of_entity_proper_symbol sym_enp_l)
;;

(** {6 Indexing} *)

let list_index_of_entity_symbol sym_ent =
  let str = string_off sym_ent in
  1 + (List_v.index_of_element_of_list sym_ent (entity_symbol_list str))
;;

let hash_index_of_entity_symbol sym_ent =
  let str = string_off sym_ent in
  Hashtbl.hash str
;;
