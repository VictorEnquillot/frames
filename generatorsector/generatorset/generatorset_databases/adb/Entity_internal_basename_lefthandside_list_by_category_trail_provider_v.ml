(** {3 1Entity_internal_basename_lefthandside_list_by_category_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v";
   "Current : AGNR:Entity_internal_basename_lefthandside_list_by_category_trail_provider_v";
   "Needed-by : ";
   "What-is-it : all Entity_basename in the LHS";
   "What-is-it : all Constructor_root + Constructor_node for symbol";
   "What-is-it : all Constructor_leaf for formula";
   "Invariant : all basename are different";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_basename_lefthandside_list_by_category_trail_register";;

let entity_basename_lefthandside_list_by_category_trail_register : 
    (Trail_t.trail, 
     string list)
    Register_t.register = Register_v.make 137
;;
	
(** {6 Retrieving} *)

let retrieve tra_cat =
  try Register_v.retrieve 
      entity_basename_lefthandside_list_by_category_trail_register 
      tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let store tra_cat ebl_l =
  let nam_fun = "store" in
  try Register_v.store 
      entity_basename_lefthandside_list_by_category_trail_register 
      tra_cat 
      ebl_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "triplet string list were NOT already stored"
      (Format.sprintf "for category key >%s<@.    already stored value >%s<"
         (Trail_v.name tra_cat)
         (List_v.name_with_separator Utilities_v.identity ";\n   " ebl_l) 
      )
      "Check category set files"
;;

let is_stored tra_cat =
  Register_v.is_stored 
    entity_basename_lefthandside_list_by_category_trail_register 
    tra_cat
;;

let is_once_list_of_category_trail_of_entity_basename_lefthandside_list tra_cat ebl_l =
  let nam_fun = "is_once_list_of_entity_basename_lefthandside_list" in

  if not ( List_v.is_once_list_of_list ebl_l )
  then 
    let dup_l = List_v.duplicated_elements_of_list String.compare ebl_l in
    let nam_dos = Trail_v.value_of_key_off_trail "domain" tra_cat in
    let nam_cat = Trail_v.value_of_key_off_trail "category" tra_cat in
    Error_messages_v.print_fatal_error nam_cod nam_fun  
      "Entity basename list were a Once_list"
      (Format.sprintf "these duplicated constructors :@.     %s"
	 (List_v.name_with_separator Utilities_v.identity ";\n      " dup_l)
      )
      (Format.sprintf "Extract them from file %s_%ss.set" nam_dos nam_cat)
  else
    List.sort String.compare ebl_l
;;

let build tra_cat =
  let ekr_l = 
    Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v.provide
      tra_cat
  in

  let ebl_l = List.map Triplet_v.left_off_triplet ekr_l in
  is_once_list_of_category_trail_of_entity_basename_lefthandside_list tra_cat ebl_l
;;

let build_n_store tra_cat =
  let ebl_l = build tra_cat in
  store tra_cat ebl_l; 
  ebl_l
;;

let provide tra_cat =
  if tra_cat = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_cat were NOT empty" "tra_cat IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "category" tra_cat) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide" "category trail" 
	(Format.sprintf "%s instead" (Trail_v.name tra_cat) ) "Check"
    else
      begin
	if Register_v.is_stored 
	    entity_basename_lefthandside_list_by_category_trail_register 
	    tra_cat
	then retrieve tra_cat
	else build_n_store tra_cat
      end
;;
