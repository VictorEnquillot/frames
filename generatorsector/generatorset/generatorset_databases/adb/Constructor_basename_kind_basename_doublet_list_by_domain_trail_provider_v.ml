(** {3 Constructor_basename_kind_basename_doublet_list_by_domain_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v";
   "Current : AGN:Constructor_basename_kind_basename_doublet_list_by_domain_trail_provider_v";
   "Needed-by : AGNR:Constructor_leaf_basename_list_by_domain_trail_provider_v";
   "Needed-by : AGNR:Kind_name_by_constructor_leaf_trail_provider_v";
   "Needed-by : AGNR:Constructor_node_basename_list_by_domain_trail_provider_v";
   "Needed-by : AGNR:Kind_name_by_constructor_notleaf_trail_provider_v";
   "Definition : a Constructor_basename is a Root a Node of a Leaf of the Constructor Tree (CT)";
   "What-is-it : for each Domainset_trail it provides the list of (Constructor_basename, Rhs_string)";
   "Invariant : Constructor_basename are unique";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_basename_kind_basename_doublet_list_by_domain_trail_register";;

let constructor_basename_kind_basename_doublet_list_by_domain_trail_register : 
    (Trail_t.trail, 
     (string, string) 
       Doublet_list_t.doublet_list) 
       Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_dos =
  try Register_v.retrieve 
      constructor_basename_kind_basename_doublet_list_by_domain_trail_register
      tra_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let store tra_dos nam_ent_n_str_con_dol =
  let nam_fun = "store" in
  try Register_v.store 
      constructor_basename_kind_basename_doublet_list_by_domain_trail_register 
      tra_dos 
      nam_ent_n_str_con_dol
  with Failure ("Already_stored:Register_v.ml:store") ->
    Utilities_v.failwith_of_message_of_code_name_of_function_name 
      "Already_stored:Register_v.ml:store" nam_cod nam_fun
;;

let is_stored tra_dos =
  Register_v.is_stored 
    constructor_basename_kind_basename_doublet_list_by_domain_trail_register 
    tra_dos
;;


let is_constructor_basename_list_once_list tra_dos dou_ck_l =
  let nam_fun = "is_constructor_basename_list_once_list" in

  let c_l = List.map (fun (c, k) -> c) dou_ck_l in
  
  if not ( List_v.is_once_list_of_list c_l )
  then (*** Improve : output those names ***)
    Error_messages_v.print_fatal_error nam_cod nam_fun  
      "Constructor basename list were a Once_list"
      (Format.sprintf "for domainset >%s<@.   Constructor basename list is :@.%s"
         (Trail_v.name tra_dos)
         (List_v.name_with_separator Utilities_v.identity ";\n " c_l) )
      "Check for duplicated constructor basename in set files"
  else
    dou_ck_l
;;

let build tra_dos =
  let tra_cat_sym = Trail_v.make "category" "symbol" tra_dos in
  let tri_ckr_sym_l =  
    Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v.provide
      tra_cat_sym
  in
  let tra_cat_for = Trail_v.make "category" "formula" tra_dos in
  let tri_ckr_for_l =  
    Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v.provide
      tra_cat_for
  in
  
  let tri_ckr_l = tri_ckr_sym_l @ tri_ckr_for_l in

  let dou_ck_l = List.map (fun (c, k, r) -> (c, k)) tri_ckr_l in

  is_constructor_basename_list_once_list tra_dos dou_ck_l
;;

let build_n_store tra_dos =
  let nam_ent_str_con_dol = build tra_dos in
    store tra_dos nam_ent_str_con_dol;
    nam_ent_str_con_dol
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
	"category trail"
	(Format.sprintf "%s instead" (Trail_v.name tra_dos))
	"Check"
    else
      begin
	if Register_v.is_stored 
	    constructor_basename_kind_basename_doublet_list_by_domain_trail_register 
	    tra_dos
	then retrieve tra_dos
	else build_n_store tra_dos 
      end
;;
