(** {3 Constructor_basename_righthandside_list_by_category_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v";
   "Current : AGNR:Constructor_basename_righthandside_list_by_category_trail_provider_v";
   "Needed-by : ";
   "What-is-it : all Constructor_basename in the LHS";
   "What-is-it : all Constructor_node + Root for symbol";
   "What-is-it : all Constructor_leaf for formula";
   "Invariant : all basename are different"
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_basename_righthandside_list_by_category_trail_register";;

let constructor_basename_righthandside_list_by_category_trail_register : 
    (Trail_t.trail, 
     string list)
    Register_t.register = Register_v.make 137
;;
	
(** {6 Retrieving} *)

let retrieve tra_cat =
  try Register_v.retrieve 
      constructor_basename_righthandside_list_by_category_trail_register 
      tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let store tra_cat ebl_l =
  let nam_fun = "store" in
  try Register_v.store 
      constructor_basename_righthandside_list_by_category_trail_register 
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
    constructor_basename_righthandside_list_by_category_trail_register 
    tra_cat
;;

let is_once_list_of_category_trail_of_constructor_basename_righthandside_list tra_cat ebl_l =
  let nam_fun = "is_once_list_of_constructor_basename_righthandside_list" in

  if not ( List_v.is_once_list_of_list ebl_l )
  then (*** Improve : output those names ***)
    Error_messages_v.print_fatal_error nam_cod nam_fun  
      "Constructor basename list were a Once_list"
      (Format.sprintf "for category >%s<@.   Constructor basename list in LHS is :@.%s"
         (Trail_v.name tra_cat)
         (List_v.name_with_separator Utilities_v.identity ";\n " ebl_l) )
      "Check for duplicated constructors in set files"
  else
    List.sort String.compare ebl_l
;;

let build tra_cat =
  let ckr_l = 
    Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v.provide
      tra_cat
  in

  let cbl_l = List.map Triplet_v.right_off_triplet ckr_l in
  is_once_list_of_category_trail_of_constructor_basename_righthandside_list tra_cat cbl_l
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
	    constructor_basename_righthandside_list_by_category_trail_register 
	    tra_cat
	then retrieve tra_cat
	else build_n_store tra_cat
      end
;;
