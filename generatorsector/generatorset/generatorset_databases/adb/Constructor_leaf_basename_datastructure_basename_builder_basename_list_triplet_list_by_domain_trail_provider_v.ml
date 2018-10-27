(** {3 Constructor_leaf_basename_datastructure_basename_builder_basename_list_doublet_list_by_domain_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v";
   "Current : AGNR:Constructor_leaf_basename_datastructure_basename_builder_basename_list_triplet_list_by_domain_trail_provider_v";
   "Needed-by : ";
   "What-is-it : it provides for each Domainset_trail the list of triplet (Constructor_leaf, datastructure, builder_list)";
   "How-is-it-done : from Constructor_basename_righthandside_string_doulet_list_by_category_trail_provider_v";
   "Invariant : Datastructure_basename is valid";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_leaf_basename_datastructure_basename_builder_basename_list_triplet_list_by_domain_trail_register";;

let constructor_leaf_basename_datastructure_basename_builder_basename_list_triplet_list_by_domain_trail_register : 
    (Trail_t.trail, 
     (string, string) 
       Doublet_list_t.doublet_list) 
       Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_dos =
  try Register_v.retrieve 
      constructor_leaf_basename_datastructure_basename_builder_basename_list_triplet_list_by_domain_trail_register
      tra_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let store tra_dos nam_ent_n_str_con_dol =
  try Register_v.store 
      constructor_leaf_basename_datastructure_basename_builder_basename_list_triplet_list_by_domain_trail_register 
      tra_dos 
      nam_ent_n_str_con_dol
  with Failure ("Already_stored:Register_v.ml:store") ->
    Error_messages_v.print_warning
      nam_cod 
      "store"
      (Format.sprintf "key >%s<@.    already stored with value:@. >%s<"
         (Trail_v.name tra_dos)
         (Doublet_list_v.name_with_separator Utilities_v.identity Utilities_v.identity "; "
	    (retrieve tra_dos)) 
      )
;;

let is_stored tra_dos =
  Register_v.is_stored 
    constructor_leaf_basename_datastructure_basename_builder_basename_list_triplet_list_by_domain_trail_register 
    tra_dos
;;

let build tra_dos =
  let tra_cat = Trail_v.make "category" "formula" tra_dos in
  let tri_ckr_l =
    Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v.provide
      tra_cat
  in
  let dou_cr_l = List.map (fun (c, k, rhs) -> (c, rhs) ) tri_ckr_l in
  List.map (fun (c, rhs) -> 
    (c, Invariants_v.has_valid_datastructure_basename_of_righthandside_string rhs) ) 
    dou_cr_l
;;

let build_n_store tra_dos =
  let dou_l = build tra_dos in
  store tra_dos dou_l;
  dou_l
;;

let provide tra_dos =
  if tra_dos = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_dos were NOT empty" "tra_dos IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "domain" tra_dos) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide"
	"domain trail"
	(Format.sprintf "%s instead" (Trail_v.name tra_dos))
	"Check"
    else
      begin
	if Register_v.is_stored 
	    constructor_leaf_basename_datastructure_basename_builder_basename_list_triplet_list_by_domain_trail_register 
	    tra_dos
	then retrieve tra_dos
	else build_n_store tra_dos 
      end
;;
