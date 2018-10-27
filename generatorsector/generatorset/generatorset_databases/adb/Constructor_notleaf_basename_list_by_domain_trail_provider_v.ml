(** {3 Constructor_notleaf_basename_list_by_domain_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_node_basename_list_by_domain_trail_provider_v";
   "Needs : AGNR:Constructor_root_basename_by_domain_trail_provider_v";
   "Current : AGNR:Constructor_notleaf_basename_list_by_domain_trail_provider_v";
   "Needed-by : ";
   "Definition : a Constructor_notleaf is Root or a Node of the Constructor Tree (CT)";
   "Definition : all Constructor_basename in LHS of symbols";
   "Invariant : is the sum of Root and Node list";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_notleaf_basename_list_by_domain_trail_register";;

let constructor_notleaf_basename_list_by_domain_trail_register : 
    (Trail_t.trail, 
     string list)
    Register_t.register = Register_v.make 137
;;

let store tra_dos nam_cno_l =
  try Register_v.store 
      constructor_notleaf_basename_list_by_domain_trail_register 
      tra_dos 
      nam_cno_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_dos =
  Register_v.is_stored 
    constructor_notleaf_basename_list_by_domain_trail_register tra_dos
;;

(** {6 Retrieving} *)

let retrieve tra_dos =
  try Register_v.retrieve 
      constructor_notleaf_basename_list_by_domain_trail_register 
      tra_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":store")
;;  

let is_symbol_lhs_list ban_cnl_l tra_dos =
  let nam_fun = "is_symbol_lhs_list" in
  let tra_cat = Trail_v.make "category" "symbol" tra_dos in
  let ban_lhs_l = Constructor_basename_lefthandside_list_by_category_trail_provider_v.provide
      tra_cat
  in

  let exc_l = List_v.exclusive_union_of_list_of_list ban_cnl_l ban_lhs_l in
  if exc_l <> []
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "Constructor_notleaf list has same elements as Constructor_basename_lefthandside_list for symbol" 
      (Format.sprintf "exclusion list is :@.      %s"
	 (List_v.name_with_separator Utilities_v.identity ";\n  " exc_l)
      )
      "Check symbols.set file"
  else 
    ban_cnl_l
;;

let build tra_dos =
  let ban_cno_l =  
    Constructor_node_basename_list_by_domain_trail_provider_v.provide
      tra_dos
  in
  let ban_roo =  
    Constructor_root_basename_by_domain_trail_provider_v.provide    
      tra_dos
  in

  let ban_cnl_l = ban_roo :: ban_cno_l in

  is_symbol_lhs_list ban_cnl_l tra_dos
;;

let build_n_store tra_dos =
  let nam_cno_l = build tra_dos in
  store tra_dos nam_cno_l; 
  nam_cno_l
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
	    constructor_notleaf_basename_list_by_domain_trail_register 
	    tra_dos
	then retrieve tra_dos
	else build_n_store tra_dos; 
      end
;;
