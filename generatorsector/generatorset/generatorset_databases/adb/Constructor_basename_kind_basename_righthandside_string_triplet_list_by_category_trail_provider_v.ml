(** {3 Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v";
   "Current : AGNR:Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v";
   "Needed-by : ";
   "What-is-it : same as Entity_...";
   "Invariant : is_valid_constructor_kind";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_register";;

let constructor_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_register : 
    (Trail_t.trail, 
     (string, string, string) Triplet_list_t.triplet_list) 
     Register_t.register = Register_v.make 137
;;
	
(** {6 Retrieving} *)

let retrieve tra_cat =
  try Register_v.retrieve 
      constructor_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_register 
      tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let store tra_cat wws_trl =
  let nam_fun = "store" in
  try Register_v.store 
      constructor_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_register 
      tra_cat 
      wws_trl
  with Failure ("Already_stored:Register_v.ml:store") ->
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "triplet string list were NOT already stored"
      (Format.sprintf "for domainset key >%s<@.    already stored value >%s<"
         (Trail_v.name tra_cat)
         (Triplet_list_v.name_with_separator
	    Utilities_v.identity Utilities_v.identity Utilities_v.identity 
	    ";\n   " 
	    wws_trl) 
      )
      "Check domainset set files"
;;

let is_stored tra_cat =
  Register_v.is_stored 
    constructor_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_register 
    tra_cat
;;

let build tra_cat =
    Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v.provide
      tra_cat
;;

let build_n_store tra_cat =
  let wws_trl = build tra_cat in
  store tra_cat wws_trl; 
  wws_trl
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
	    constructor_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_register 
	    tra_cat
	then retrieve tra_cat
	else build_n_store tra_cat
      end
;;
