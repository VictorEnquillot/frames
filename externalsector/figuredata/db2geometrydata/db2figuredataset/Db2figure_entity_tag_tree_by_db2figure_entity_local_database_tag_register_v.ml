(** {3 Db2figurefigurefigure_entity_tag_tree_tree_by_db2figure_entity_local_database_tag_register_v} *)

(** {6 Documenting} *)

let documentation () = 
[
  "Needs: ";
  "Current : DFIG:Db2figurefigurefigure_entity_tag_tree_tree_by_db2figure_entity_local_database_tag_register_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let register : 
    (Db2figurefigurefigure_entity_local_database_tag_t.db2figure_entity_local_database_tag,
     Db2figurefigurefigure_entity_tag_t.db2figure_entity_tag Tree_t.tree
    ) 
    Register_t.register = 
  Format.fprintf Format.std_formatter "@. --- Creating  %s --- @." nam_mod;
  Register_v.make 137
;;

let name_of_key key =
  Db2figurefigurefigure_entity_local_database_tag_v.name key
;;

let name_of_value val_ =
  Tree_v.name_with_separator 
    Db2figurefigurefigure_entity_tag_v.name ";\n  " ";\n  "
    val_
;;

let dump () = 
  Register_v.string_of_register 
    name_of_key
    name_of_value
    ";\n   "
    register
;;

let is_empty () =
  Register_v.is_empty register
;;

(** {6 Retrieving_for_formula.} *)

let retrieve key =
  let nam_fun = "retrieve" in
  try Register_v.retrieve register key 
  with Failure ("Not_stored:register_v.ml:retrieve") ->
    Utilities_v.failwith_of_message_of_code_name_of_function_name
      "Not_stored:" nam_mod nam_fun
;;  

(** {6 Storing.} *)

let error_message_already_stored_value_of_key_of_value key val_ =
  let nam_fun = "already_stored_message" in
  
  let val__old = retrieve key in
  if val_ <> val__old
  then 
    Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "for key >%s<@.    already stored value :@.   %s@.    equal new one :"
         (name_of_key key) 
         (name_of_value val__old)
      )
      (Format.sprintf "for new one :@.   %s@.Register stores:@.  %s" 
         (name_of_value val_)
         (dump ())
      )
      "Check or re-run if it is a test"
  else 
    Error_messages_v.print_warning nam_mod nam_fun
      (Format.sprintf "for key >%s<@.    the same value has already been stored:@.   %s@."
         (name_of_key key) 
         (name_of_value val__old)
      )
;;

let store key val_ =
  try Register_v.store register key val_
  with Failure ("Already_stored:Register_v.ml:store") ->
    error_message_already_stored_value_of_key_of_value key val_
      ;
    if Parameters_figureset_general_provider_v.provide "trace-store" = "true"
    then
      Management_v.storing_of_register_name_of_value_name_of_key_name 
	nam_mod
	(name_of_value val_)
	(name_of_key key)
    else ()
;;

let store_force key val_ =
  Register_v.store_force register key val_
;;

let is_stored key =
  Register_v.is_stored register key
;;

