(** {3 Entity_fictive_nullary_symbol_list_by_constructor_leaf_trail_provider_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Constructor_leaf_basename_list_by_domain_trail_provider_v";
   "Current : IGNR:Entity_fictive_nullary_symbol_list_by_constructor_leaf_trail_provider_v";
   "Needed-by : ";
   "What-is-it : Translation of each Constructor_leaf_basename into an Entity_fictive_nullary_symbol";
   "How-is-it-done : ";
   "Invariant : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_fictive_nullary_symbol_list_by_constructor_leaf_trail_register";;

let entity_fictive_nullary_symbol_list_by_constructor_leaf_trail_register : 
    (Trail_t.trail, 
     Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol) 
    Register_t.register = Register_v.make 137
;;

let store tra_cle sym_efn =
  let nam_fun = "store" in
  
  try Register_v.store 
      entity_fictive_nullary_symbol_list_by_constructor_leaf_trail_register 
      tra_cle 
      sym_efn
  with 
    Failure ("Already_stored:Register_v.ml:store") ->
      Utilities_v.failwith_of_message_of_code_name_of_function_name
	"Already_stored" nam_cod nam_fun
;;

let is_stored tra_cle =
  Register_v.is_stored 
    entity_fictive_nullary_symbol_list_by_constructor_leaf_trail_register
    tra_cle
;;

let retrieve tra_cle =
  try Register_v.retrieve 
      entity_fictive_nullary_symbol_list_by_constructor_leaf_trail_register tra_cle
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let entity_fictive_nullary_symbol_of_constructor_leaf_basename ban_cle =
  if ( String_v.is_once_of_char_of_string ':' ban_cle )
  then
    let ban_ent = String_v.head_of_string_of_char ban_cle ':' in 
    Entity_fictive_nullary_symbol_v.ofstring ban_ent
  else
    Entity_fictive_nullary_symbol_v.bare ban_cle  
;;

let build tra_cle =
  let ban_cle = Trail_v.value_of_key_off_trail "entity" tra_cle in

  entity_fictive_nullary_symbol_of_constructor_leaf_basename ban_cle
;;

let build_n_store tra_cle =
  let sym_efn = build tra_cle in
  store tra_cle sym_efn; 
  sym_efn
;;

let provide tra_cle =
  let nam_fun = "provide" in
  if not (Trail_v.has_of_head_key_off_trail "entity" tra_cle) 
  then 
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "entity trail"
      (Format.sprintf "%s instead" (Trail_v.name tra_cle))
      "Check"
  else
    begin
      if Register_v.is_stored 
	  entity_fictive_nullary_symbol_list_by_constructor_leaf_trail_register 
          tra_cle
      then retrieve tra_cle
      else build_n_store tra_cle 
    end
