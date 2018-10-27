(** {3 1Entity_basename_righthandside_list_by_category_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v";
   "Current : AGNR:Entity_basename_righthandside_list_by_category_trail_provider_v";
   "Needed-by : ";
   "What-is-it : all Entity_basename in either set";
   "Definition : Entity is Basic | Builder | Constructor | Datastructure | Root";
   "Definition : Constructor is Constructor_root | Constructor_leaf | Constructor_node";
   "Example :";
   "Invariant : all basename are different";
   "Invariant : righthandside has at least two elements for \"formula\"";
   "Invariant : righthandside has at least one element for \"symbol\"";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_basename_righthandside_list_by_category_trail_register";;

let entity_basename_righthandside_list_by_category_trail_register : 
    (Trail_t.trail, 
     string list)
    Register_t.register = Register_v.make 137
;;
	
(** {6 Retrieving} *)

let retrieve tra_cat =
  try Register_v.retrieve 
      entity_basename_righthandside_list_by_category_trail_register 
      tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let store tra_cat ebl_l =
  let nam_fun = "store" in
  try Register_v.store 
      entity_basename_righthandside_list_by_category_trail_register 
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
    entity_basename_righthandside_list_by_category_trail_register 
    tra_cat
;;

let build tra_cat =
  let ekr_l = 
    Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v.provide
      tra_cat
  in
  let nam_cat = Trail_v.value_of_key_off_trail "category" tra_cat in

  let rhs_l = List.map (fun (e, k, rhs) -> rhs) ekr_l in

  let ebr_ll = List.map 
      (Invariants_v.has_valid_element_number_of_category_name_of_righthandside nam_cat) 
      rhs_l 
  in

  let ebr_l = List.flatten ebr_ll in

  List_v.left_once_list_off_list ebr_l
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
	    entity_basename_righthandside_list_by_category_trail_register 
	    tra_cat
	then retrieve tra_cat
	else build_n_store tra_cat
      end
;;
