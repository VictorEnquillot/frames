(** {3 Constructor_leaf_basename_list_by_domain_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v";
   "Current : AGNR:Constructor_leaf_basename_list_by_domain_trail_provider_v";
   "Needs : AGNR:Constructor_basename_list_by_domain_trail_provider_v";
   "Needed-by : ";
   "Definition : Constructor_leaf is a LHS Entity in formulas set";
   "What-is-it : it provides the list of all Constructor_leaf_name found in file domainset_formulas.dat";
   "Invariant : Constructor_leaf list + Constructor_node list = Rhs elements of symbols.dat";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_leaf_basename_list_by_domain_trail_register";;

let constructor_leaf_basename_list_by_domain_trail_register : 
    (Trail_t.trail, 
     string list)
    Register_t.register = Register_v.make 137
;;

let store tra_dos nam_ent_l =
  try Register_v.store 
      constructor_leaf_basename_list_by_domain_trail_register 
      tra_dos 
      nam_ent_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_dos =
  Register_v.is_stored 
    constructor_leaf_basename_list_by_domain_trail_register tra_dos
;;

(** {6 Retrieving} *)

let retrieve tra_dos =
  try Register_v.retrieve 
      constructor_leaf_basename_list_by_domain_trail_register 
      tra_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":store")
;;  

let constructor_leaf_basename_list_off_righthanside_symbol_set tra_dos =
  let tra_cat = Trail_v.make "category" "symbol" tra_dos in
  let ebr_l =  
    Entity_basename_righthandside_list_by_category_trail_provider_v.provide
      tra_cat
  in
  let cnb_l =  
    Constructor_node_basename_list_by_domain_trail_provider_v.provide tra_dos
  in

  List_v.exclusion_off_list_of_list ebr_l cnb_l
;;

let both_constructor_leaf_basename_list_coincide tra_dos =
  let nam_fun = "both_constructor_leaf_basename_list_coincide" in

  let tra_cat = Trail_v.make "category" "formula" tra_dos in
  let cbl_l =  
    Constructor_basename_lefthandside_list_by_category_trail_provider_v.provide
      tra_cat
  in
  let clb_l = 
    constructor_leaf_basename_list_off_righthanside_symbol_set 
      tra_dos 
  in

  let exc_l = List_v.exclusive_union_of_list_of_list cbl_l clb_l in
  if exc_l <> []
  then
    let sym_off_for_l = List_v.exclusion_off_list_of_list clb_l cbl_l in 
    let for_off_sym_l = List_v.exclusion_off_list_of_list cbl_l clb_l in  

    let nam_dos = Trail_v.value_of_key_off_trail "domain" tra_dos in
    let nam_dir_fra = (Unix.getenv "FRA") ^ "/" in
    let nam_dir_gen = nam_dir_fra ^ nam_dos ^ "/generator/" ^ nam_dos in

    Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "in Domain %s two definitions of Constructor_leaf_basename_list coincide" nam_dos)
      (Format.sprintf "@.     leaf elements in symbols not defined in formulas LHS :@.   %s@.     elements in formulas and not in symbols as RHS:@.   %s"
	 (List_v.name_with_separator 
	    (Format.sprintf "builders %s = datastructure entity") 
	    ";\n     " 
	    sym_off_for_l
	 )
	 (List_v.name_with_separator Utilities_v.identity "; " for_off_sym_l)
      )      
      (Format.sprintf "Check file %s_symbols.dat@.    and file %s_formulas.dat" nam_dir_gen nam_dir_gen)
  
  else 
    clb_l
;;

let build tra_dos =
  both_constructor_leaf_basename_list_coincide tra_dos
;;

let build_n_store tra_dos =
  let nam_ent_l = build tra_dos in
  store tra_dos nam_ent_l; 
  nam_ent_l
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
	    constructor_leaf_basename_list_by_domain_trail_register 
	    tra_dos
	then retrieve tra_dos
	else build_n_store tra_dos; 
      end
;;
