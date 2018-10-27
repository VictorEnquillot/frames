(** {3 Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Word_word_string_triplet_list_by_category_trail_provider_v";
   "Current : AGNR:Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v";
   "Needed-by : ";
   "What-is-it : Reordering as (Constructor, Kind, String) of Symbols.set and Formulas.set information";
   "Definition : kind is either builders or constructors or description";
   "Invariant : have_valid_entity_kind (constructors for symbol, builders for formula)";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_register";;

let entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_register : 
    (Trail_t.trail, 
     (string, string, string) Triplet_list_t.triplet_list) 
     Register_t.register = Register_v.make 137
;;
	
(** {6 Retrieving} *)

let retrieve tra_cat =
  try Register_v.retrieve 
      entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_register 
      tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let store tra_cat ekr_l =
  let nam_fun = "store" in
  try Register_v.store 
      entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_register 
      tra_cat 
      ekr_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "triplet string list were NOT already stored"
      (Format.sprintf "for category key >%s<@.    already stored value >%s<"
         (Trail_v.name tra_cat)
         (Triplet_list_v.name_with_separator
	    Utilities_v.identity Utilities_v.identity Utilities_v.identity 
	    ";\n   " 
	    ekr_l) 
      )
      "Check category set files"
;;

let is_stored tra_cat =
  Register_v.is_stored 
    entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_register 
    tra_cat
;;

let build tra_cat =
  let wws_l = 
    Word_word_string_triplet_list_by_category_trail_provider_v.provide
      tra_cat
  in
  let val_l = 
    Invariants_v.has_valid_entity_kind_of_category_trail_of_string_triplet_list
      tra_cat 
      wws_l 
  in
  List.map (fun (k, e, rhs) -> (e, k, rhs)) val_l 
;;

let build_n_store tra_cat =
  let ekr_l = build tra_cat in
  store tra_cat ekr_l; 
  ekr_l
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
	    entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_register 
	    tra_cat
	then retrieve tra_cat
	else build_n_store tra_cat
      end
;;
