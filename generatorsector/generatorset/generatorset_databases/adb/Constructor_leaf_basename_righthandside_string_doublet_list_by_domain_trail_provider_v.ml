(** {3 Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v";
   "Current : AGNR:Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v";
   "Needed-by : ";
   "Definition : a Constructor_leaf is a Leaf of the Constructor Tree (CT)";
   "Definition : the Righthandside_string is the string at the right of the = sign";
   "What-is-it : for each Domainset_trail it provides the list of (Constructor_leaf_name, RHS string)";
   "How-is-it-done : by specifying \"builders\" kind_basename";
   "Invariant : 1. is not an empty list";
   "Invariant : 2. Left_doublet part is a Constructor_leaf_basename";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_register";;

let constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_register : 
    (Trail_t.trail, 
     (string, string) 
       Doublet_list_t.doublet_list) 
       Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_dos =
  try Register_v.retrieve 
      constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_register
      tra_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let store tra_dos nam_ent_n_str_con_dol =
  try Register_v.store 
      constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_register 
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
    constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_register 
    tra_dos
;;

(* {6 Invariants} *)

let is_list_not_empty lst =
  let nam_fun = "is_list_not_empty" in

  if lst = []
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "Constructor_leaf list from lefthandside for formulas is NOT empty"
      "it IS empty"
      "Check symbols.set file"
  else 
    lst
;;

let are_constructor_leaf_basename_list_equal tra_dos tri_ckr_l =
  let nam_fun = "are_constructor_leaf_basename_list_equal" in

  let ok_l = is_list_not_empty tri_ckr_l in

  let tri_c_l = List.filter 
      (fun (c, k, rhs) -> (k = "builders") )
      ok_l
  in

  let ban_cle_l = List.map (fun (c, k, rhs) -> c) tri_c_l in

  let ban_lhs_l = Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dos in

  let exc_l = List_v.exclusive_union_of_list_of_list ban_cle_l ban_lhs_l in
  if exc_l <> []
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "Constructor_leaf list from lefthandside for formulas has same elements as Constructor_leaf_basename list for symbol" 
      (Format.sprintf "exclusion list is :@.      %s"
	 (List_v.name_with_separator Utilities_v.identity ";\n  " exc_l)
      )
      "Check symbols.set file"
  else 
    tri_ckr_l
;;

(* {6 Building} *)

let build tra_dos =
  let tra_cat = Trail_v.make "category" "formula" tra_dos in
  let tri_ckr_l = 
    Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v.provide
      tra_cat
  in

  let tri_ckr_ok = are_constructor_leaf_basename_list_equal tra_dos tri_ckr_l in

  let dou_cr_l = List.map (fun (c, k, rhs) -> (c, rhs) ) tri_ckr_ok in
  
  let cmp (a, b) (x, y) =
    (String.compare a x)
  in

  List.sort cmp dou_cr_l 
;;

let build_n_store tra_dos =
  let dou_cr_l = build tra_dos in
  store tra_dos dou_cr_l;
  dou_cr_l
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
	    constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_register 
	    tra_dos
	then retrieve tra_dos
	else build tra_dos 
      end
;;
