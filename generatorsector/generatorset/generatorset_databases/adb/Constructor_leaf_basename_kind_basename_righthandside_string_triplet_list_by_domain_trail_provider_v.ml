(** {3 Contructor_leaf_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_leaf_basename_list_by_domain_trail_provider_v";
   "Needs : AGNR:Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v";
   "Current : AGNR:Contructor_leaf_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_provider_v";
   "Needed-by : ";
   "What-is-it : Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v restricted to \"formula\" category";
   "Invariant : Constructor_basename list = Constructor_leaf_basename_list_by_domain_trail_provider_v";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_leaf_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_register";;

let constructor_leaf_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_register : 
    (Trail_t.trail, 
     (string, string, string) Triplet_list_t.triplet_list) 
     Register_t.register = Register_v.make 137
;;
	
(** {6 Retrieving} *)

let retrieve tra_dos =
  try Register_v.retrieve 
      constructor_leaf_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_register 
      tra_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let store tra_dos ekr_l =
  let nam_fun = "store" in
  try Register_v.store 
      constructor_leaf_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_register 
      tra_dos 
      ekr_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "triplet string list were NOT already stored"
      (Format.sprintf "for category key >%s<@.    already stored value >%s<"
         (Trail_v.name tra_dos)
         (Triplet_list_v.name_with_separator
	    Utilities_v.identity Utilities_v.identity Utilities_v.identity 
	    ";\n   " 
	    ekr_l) 
      )
      "Check category set files"
;;

let is_stored tra_dos =
  Register_v.is_stored 
    constructor_leaf_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_register 
    tra_dos
;;

(* {6 Invariants} *)

let constructor_leaf_list_is_valid ekr_l tra_dos =
  let nam_fun = "is_constructor_leaf_list_valid" in
  let clb_l = 
    Constructor_leaf_basename_list_by_domain_trail_provider_v.provide 
      tra_dos 
  in
  let eb_l = List.map (fun (e, k, r) -> e ) ekr_l in
  let exc_l = List_v.exclusion_off_list_of_list clb_l eb_l in
  
  if exc_l <> []
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "Constructor_leaf is that from Constructor_leaf_basename_list_by_domain_trail_provider_v"
      (Format.sprintf "exclusion list is :@.      %s"
	 (List_v.name_with_separator Utilities_v.identity ";\n  " exc_l)
      )
      "Check symbols.set file"
  else 
    ekr_l
;;

(* {6 Building} *)

let build tra_dos =
  let tra_cat = Trail_v.make "category" "formula" tra_dos in
  let ekr_l = 
    Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v.provide 
    tra_cat
  in
  constructor_leaf_list_is_valid ekr_l tra_dos
;;

let build_n_store tra_dos =
  let ekr_l = build tra_dos in
  store tra_dos ekr_l; 
  ekr_l
;;

let provide tra_dos =
  if tra_dos = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_dos were NOT empty" "tra_dos IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "domain" tra_dos) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide" "domain trail" 
	(Format.sprintf "%s instead" (Trail_v.name tra_dos) ) "Check"
    else
      begin
	if Register_v.is_stored 
	    constructor_leaf_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_register 
	    tra_dos
	then retrieve tra_dos
	else build_n_store tra_dos
      end
;;
