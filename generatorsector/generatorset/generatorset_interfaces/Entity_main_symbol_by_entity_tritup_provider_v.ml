(** {3 Entity_main_symbol_list_by_entity_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_symbol_path_by_entity_tritup_provider_v";
   "Current : IGNR:Entity_main_symbol_list_by_entity_tritup_provider_v";
   "Needed-by : ";
   "Definition : A Entity_main_symbol is the topson Entity_symbol of the Root in the CT along the path";
   "Example : Triangle"
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "main_symbol_list_by_entity_tritup_register";;

let main_symbol_list_by_entity_tritup_register : 
    (
     (Entity_symbol_t.entity_symbol, 
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol
     ) Triplet_t.triplet,
     
     Entity_symbol_t.entity_symbol
    
    ) Register_t.register = Register_v.make 137
;;

let store tri_ent sym_ent_l =
  let nam_fun = "store" in

  try Register_v.store 
      main_symbol_list_by_entity_tritup_register tri_ent sym_ent_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    Utilities_v.failwith_of_message_of_code_name_of_function_name
      "Already_stored" nam_cod nam_fun
;;

let is_stored tri_ent =
  Register_v.is_stored 
    main_symbol_list_by_entity_tritup_register tri_ent
;;

let retrieve tri_ent =
  let nam_fun = "retrieve" in
  
  try Register_v.retrieve 
      main_symbol_list_by_entity_tritup_register tri_ent
  with Failure ("Not_stored:Register_v.retrieve") ->
    Utilities_v.failwith_of_message_of_code_name_of_function_name
      "Already_stored" nam_cod nam_fun
;;  

let entity_main_of_entity_path sym_ent_pat =
  let nam_fun = "entity_main_of_entity_path" in

  let len = List.length sym_ent_pat in
  match len with
  | 0 -> 
      Error_messages_v.print_fatal_error nam_cod nam_fun
         "Non Empty path" "Path is Empty" "Check"

  | 1 -> 
      Utilities_v.failwith_of_message_of_code_name_of_function_name
	"No_main_for_Root" nam_cod nam_fun

  | _ -> 

      List_v.penultimate_element_off_list sym_ent_pat
;;

let build tri_ent =
  let nam_fun = "build" in
  
  let sym_ent_pat = 
    try Entity_symbol_path_by_entity_tritup_provider_v.provide tri_ent
    with Failure "Not_Entity_fictive_basicnullary_symbol:Entity_symbol_path_by_entity_tritup_provider_v.ml:build" ->
      Utilities_v.failwith_of_message_of_code_name_of_function_name 
	"Not_Entity_fictive_basicnullary_symbol" nam_cod nam_fun
  in
  entity_main_of_entity_path sym_ent_pat
;;

let build_n_store tri_ent =
  let sym_bui_l = build tri_ent in
  store tri_ent sym_bui_l; 
  sym_bui_l
;;

let provide tri_ent =
  if Register_v.is_stored 
      main_symbol_list_by_entity_tritup_register 
      tri_ent 
  then retrieve tri_ent
  else build_n_store tri_ent 
;;
