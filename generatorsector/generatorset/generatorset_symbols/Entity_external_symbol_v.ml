(** {3 The functionalities for a Symbol for an Entity External.}  *)

let nam_cod = "Entity_external_symbol_v.ml";;

(** {6 Aliasing} *)


(** {6 Naming} *)

let name = function
  | Entity_external_symbol_t.Entity_external_constrained_symbol sym_exc ->
      Entity_external_constrained_symbol_v.name sym_exc
  | Entity_external_symbol_t.Entity_external_datastructure_symbol sym_exd -> 
      Entity_external_datastructure_symbol_v.name sym_exd
  | Entity_external_symbol_t.Entity_external_tool_symbol sym_ext -> 
      Entity_external_tool_symbol_v.name sym_ext
;;

let string_off = function
  | Entity_external_symbol_t.Entity_external_constrained_symbol sym_exc ->
      (Entity_external_constrained_symbol_v.string_off sym_exc)
  | Entity_external_symbol_t.Entity_external_datastructure_symbol sym_exd -> 
      (Entity_external_datastructure_symbol_v.string_off sym_exd)
  | Entity_external_symbol_t.Entity_external_tool_symbol sym_ext -> 
      (Entity_external_tool_symbol_v.string_off sym_ext)
;;

let longname = function
  | Entity_external_symbol_t.Entity_external_constrained_symbol sym_exc ->
     (Entity_external_constrained_symbol_v.longname sym_exc)
  | Entity_external_symbol_t.Entity_external_datastructure_symbol sym_exd -> 
     (Entity_external_datastructure_symbol_v.longname sym_exd)
  | Entity_external_symbol_t.Entity_external_tool_symbol sym_ext -> 
     (Entity_external_tool_symbol_v.longname sym_ext)
;;

(** {6 Querying} *)

let is_entity_external_datastructure_symbol_of_string s =
  Entity_external_datastructure_symbol_v.is_entity_external_datastructure_symbol_of_string s
;;

let is_entity_external_constrained_symbol_of_string s =
  Entity_external_constrained_symbol_v.is_entity_external_constrained_symbol_of_string s
;;

let is_entity_external_tool_symbol_of_string s =
  Entity_external_tool_symbol_v.is_entity_external_tool_symbol_of_string s
;;

let is_entity_external_symbol_of_string s =
   is_entity_external_constrained_symbol_of_string s
|| is_entity_external_datastructure_symbol_of_string s
|| is_entity_external_tool_symbol_of_string s
;;

(** {6 Upgrading} *)

let entity_external_symbol_of_entity_external_constrained_symbol sym_exc =
  Entity_external_symbol_t.Entity_external_constrained_symbol sym_exc
;;

let entity_external_symbol_of_entity_external_datastructure_symbol sym_exd =
  Entity_external_symbol_t.Entity_external_datastructure_symbol sym_exd
;;

let entity_external_symbol_of_entity_external_tool_symbol sym_exf =
  Entity_external_symbol_t.Entity_external_tool_symbol sym_exf
;;

(** {6 Extracting} *)

let entity_external_datastructure_symbol_off_entity_external_symbol = function 
  | Entity_external_symbol_t.Entity_external_datastructure_symbol sym_exd -> sym_exd
  | sym_enx -> Error_messages_v.print_fatal_error nam_cod
        "entity_external_datastructure_symbol_off_entity_external_symbol"
        "Entity_external_datastructure_symbol"
        (Format.sprintf "%s" (name sym_enx))
        "Check"
;;

(** {6 Making} *)

let make nam s =
  if Entity_external_constrained_symbol_v.is_entity_external_constrained_symbol_of_string nam
  then
    let sym_exc = Entity_external_constrained_symbol_v.make nam in
    entity_external_symbol_of_entity_external_constrained_symbol sym_exc
  else
    if Entity_external_datastructure_symbol_v.is_entity_external_datastructure_symbol_of_string nam
    then
      let sym_exd = Entity_external_datastructure_symbol_v.make nam in
      entity_external_symbol_of_entity_external_datastructure_symbol sym_exd
    else
      if Entity_external_tool_symbol_v.is_entity_external_tool_symbol_of_string nam
      then
	let sym_exf = Entity_external_tool_symbol_v.make nam in
	entity_external_symbol_of_entity_external_tool_symbol sym_exf
      else
	begin
	  let _ = Error_messages_v.print_fatal_error nam_cod "make"
	   "a valid external entity" nam "Check" in
	  failwith "Entity_external_symbol_v.make"
	end
;;

(** {6 Listing} *)

let entity_external_symbol_list str = 
  let sym_exc_l = 
    Entity_external_constrained_symbol_v.entity_external_constrained_symbol_list 
      str 
  in
  let sym_exd_l = 
    Entity_external_datastructure_symbol_v.entity_external_datastructure_symbol_list 
      str
  in
  let sym_ext_l = 
    Entity_external_tool_symbol_v.entity_external_tool_symbol_list 
      str
  in
  (List.map entity_external_symbol_of_entity_external_constrained_symbol sym_exc_l)
  @
    (List.map entity_external_symbol_of_entity_external_datastructure_symbol sym_exd_l)
  @
    (List.map entity_external_symbol_of_entity_external_tool_symbol sym_ext_l)
;;

(** {6 Indexing} *)

let list_index_of_entity_external_symbol sym_enx =
  let str = string_off sym_enx in
  1 + (List_v.index_of_element_of_list sym_enx (entity_external_symbol_list str))
;;
