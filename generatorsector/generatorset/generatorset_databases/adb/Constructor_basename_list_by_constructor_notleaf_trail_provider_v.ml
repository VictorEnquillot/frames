(** {3 Constructor_basename_list_by_constructor_node_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Righthandside_string_by_constructor_notleaf_trail_provider_v";
   "Needs : AGNR:Constructor_basename_list_by_domain_trail_provider_v";
   "Current : AGNR:Constructor_basename_list_by_constructor_notleaf_trail_provider_v";
   "Needed-by : ";
   "Definition : a Constructor is an element of the Constructor Tree (CT) Root, Node or Leaf and Notleaf";
   "Remark : Symbols and Formulas have the SAME Constructors Tree (CT)";
   "Remark : a Constructor is either a Constructor_node (a type) or a Constructor_leaf of the CT";
   "Remark : a Constructor_leaf of the CT is always at th RHS of the = sign in constructors.set file";
   "What-is-it : it provides the constructor name list associated with a given Entity_notleaf_name";
   "How-is-it-done : by splitting Righthandside_string (from Domainset_symbols.set) into a constructor name list";
   "Invariant : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_basename_list_by_constructor_notleaf_trail_register";;

let constructor_basename_list_by_constructor_notleaf_trail_register : 
    (Trail_t.trail, 
     string list) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_cnl =
  let nam_fun = "retrieve" in
  try Register_v.retrieve 
      constructor_basename_list_by_constructor_notleaf_trail_register 
      tra_cnl
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    let str_reg = 
      Register_v.string_of_register 
	Trail_v.name 
	(List_v.name_with_separator Utilities_v.identity "; ")
	"\n" 
	constructor_basename_list_by_constructor_notleaf_trail_register
    in
    let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_cnl in
    let tra_cat = List.tl tra_cnl in
    let nam_fil = Filename_p.name
        (Database_filename_by_category_trail_provider_v.provide tra_cat) 
    in
    Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "key >%s<@.    were already stored"
         (Trail_v.name tra_cnl)) 
      (Format.sprintf "no such key in register dumped below:@.        %s" str_reg) 
      (Format.sprintf "check entry >%s< in file:@.       >%s<" nam_ent nam_fil)
;;  

let store tra_cnl ban_con_l =
  let nam_fun = "store" in
  try Register_v.store 
      constructor_basename_list_by_constructor_notleaf_trail_register 
      tra_cnl ban_con_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    let str_old_l = retrieve tra_cnl in
    if str_old_l <> ban_con_l
    then
      begin
	let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_cnl in
	let tra_cat = Trail_v.trail_of_key_off_trail "category" tra_cnl in
	let nam_fil = Tools_agnr_1_v.domainset_categorys_set_file_name tra_cat in
	Error_messages_v.print_fatal_error nam_cod nam_fun 
          (Format.sprintf "for key >%s<@.    already stored value >%s< equal new one"
             (Trail_v.name tra_cnl)
 	     (List_v.name_with_separator Utilities_v.identity "; " ban_con_l) )
     
	  (Format.sprintf "this value >%s<"
 	     (List_v.name_with_separator Utilities_v.identity "; " str_old_l) )

	  (Format.sprintf "check for duplicated entry >%s< in file:@.       >%s<" nam_ent nam_fil)
      end
    else 
      Error_messages_v.print_warning nam_cod nam_fun
        (Format.sprintf "for key >%s<@.    already stored same value >%s<"
           (Trail_v.name tra_cnl)
           (List_v.name_with_separator Utilities_v.identity "; " str_old_l) )
;;

let is_stored tra_cnl =
  Register_v.is_stored 
    constructor_basename_list_by_constructor_notleaf_trail_register 
    tra_cnl
;;

let is_constructor_notleaf_basename_of_entity_trail tra_cnl =
  let tra_dos = Trail_v.trail_of_key_off_trail "domain" tra_cnl in
  let nam_ent_l =  
    Constructor_notleaf_basename_list_by_domain_trail_provider_v.provide tra_dos
  in
  let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_cnl in
  List.mem nam_ent nam_ent_l
;;

let constructor_basename_list_off_righthandside_string tra_cnl =
  let nam_fun = "constructor_basename_list_off_righthandside_string" in
  let str_rhs = 
    try
      Righthandside_string_by_constructor_notleaf_trail_provider_v.provide tra_cnl
    with Failure 
	("Constructor_basename_not_found:Righthandside_string_by_constructor_notleaf_trail_provider_v.ml:build_n_store") ->
	  let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_cnl in
	  Error_messages_v.print_fatal_error nam_cod nam_fun
	    (Format.sprintf "Constructor_notleaf_basename >%s< were en entry for Righthandside_string_by_constructor_notleaf_trail_register" nam_ent)
	    "it is NOT"
	    "Check"
  in
  
  String_v.split_of_character_of_string ' ' str_rhs
;;

let build tra_cnl =
  constructor_basename_list_off_righthandside_string tra_cnl
;;

let build_n_store tra_cnl =
  let ban_con_l = build tra_cnl in
  store tra_cnl ban_con_l;
  ban_con_l
;;

let provide tra_cnl =
  if not ( is_constructor_notleaf_basename_of_entity_trail tra_cnl )  (* *** Improve : needs typing *** *)
  then
    let nam_dos = Trail_v.value_of_key_off_trail "domain" tra_cnl in
    let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_cnl in
    Error_messages_v.print_fatal_error nam_cod 
      "constructor_basename_list_off_righthandside_string"
      (Format.sprintf "Entity name >%s< were an Entity_notleaf of the Constructor Tree" nam_ent)
	 "it is NOT"
	 (Format.sprintf "Check file >%s_symbols.set<" nam_dos)
  else
    begin
      if Register_v.is_stored 
	  constructor_basename_list_by_constructor_notleaf_trail_register 
	  tra_cnl
      then retrieve tra_cnl
      else build_n_store tra_cnl
    end
;;
