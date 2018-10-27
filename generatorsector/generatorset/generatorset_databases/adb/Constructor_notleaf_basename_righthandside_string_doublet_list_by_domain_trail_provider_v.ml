(** {3 Constructor_notleaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v";
   "Needs : AGNR:Constructor_root_basename_by_domain_trail_provider_v";
   "Needs : AGNR:Constructor_node_basename_list_by_domain_trail_provider_v";
   "Current : AGNR:Constructor_notleaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v";
   "Needed-by : ";
   "Definition : a Constructor_node is a Node of the Constructor Tree (CT)";
   "Definition : the Righthandside_string is the string at the right of the = sign";
   "What-is-it : for each Domainset_trail it provides the list of (Constructor_node_name, RHS string)";
   "How-is-it-done : ";
   "Invariant : Constructor_notleaf list = Root + Constructor_node ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_notleaf_basename_righthandside_string_doublet_list_by_domain_trail_register";;

let constructor_notleaf_basename_righthandside_string_doublet_list_by_domain_trail_register : 
    (Trail_t.trail, 
     (string, string) 
       Doublet_list_t.doublet_list) 
       Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_dos =
  try Register_v.retrieve 
      constructor_notleaf_basename_righthandside_string_doublet_list_by_domain_trail_register
      tra_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let store tra_dos nam_ent_n_str_con_dol =
  try Register_v.store 
      constructor_notleaf_basename_righthandside_string_doublet_list_by_domain_trail_register 
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
    constructor_notleaf_basename_righthandside_string_doublet_list_by_domain_trail_register 
    tra_dos
;;

(* {6 Invariants} *)

let constructor_notleaf_list_equal_root_plus_constructor_node_list tra_dos dou_cr_l =
  let nam_fun = "constructor_notleaf_list_equal_root_plus_constructor_node_list" in

  let ban_roo = Constructor_root_basename_by_domain_trail_provider_v.provide tra_dos in
  let ban_cno_l = Constructor_node_basename_list_by_domain_trail_provider_v.provide tra_dos in
  let sum_l = ban_roo :: ban_cno_l in

  let sin_c_l = List.map (fun (c, rhs) -> c) dou_cr_l in
  
  let exu_l = List_v.exclusive_union_of_list_of_list sum_l sin_c_l in
  let cmp (a, b) (x, y) = (String.compare a x) in

  if exu_l <> []
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "Constructor_node plus Root list = Notleaf list"
      (Format.sprintf "exclusion list is :@.      %s"
	 (List_v.name_with_separator Utilities_v.identity ";\n  " exu_l)
      )
      "Check symbols.set file"
  else 
    List.sort cmp dou_cr_l 
;;

(* {6 Building} *)

let build tra_dos =
  let tra_cat = Trail_v.make "category" "symbol" tra_dos in
  let tri_ckr_l = 
    Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v.provide
      tra_cat
  in
  let dou_cr_l = List.map (fun (c, k, rhs) -> (c, rhs) ) tri_ckr_l in

  constructor_notleaf_list_equal_root_plus_constructor_node_list tra_dos dou_cr_l
;;

let build_n_store tra_dos =
  let dou_cr_l = build tra_dos in
  store tra_dos dou_cr_l;
  dou_cr_l
;;

let provide tra_dos =
  let nam_fun = "provide" in
   if tra_dos = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_dos were NOT empty" "tra_dos IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "domain" tra_dos) 
    then 
      Error_messages_v.print_fatal_error nam_cod nam_fun
	"domain trail"
	(Format.sprintf "%s instead" (Trail_v.name tra_dos))
	"Check"
    else
      begin
	if Register_v.is_stored 
	    constructor_notleaf_basename_righthandside_string_doublet_list_by_domain_trail_register 
	    tra_dos
	then retrieve tra_dos
	else build tra_dos 
      end
;;
