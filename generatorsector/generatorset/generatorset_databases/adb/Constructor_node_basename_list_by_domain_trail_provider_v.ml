(** {3 Constructor_node_basename_list_by_domain_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Entity_basename_lefthandside_list_by_category_trail_provider_v";
   "Needs : AGNR:Entity_basename_righthandside_list_by_category_trail_provider_v";
   "Current : AGNR:Constructor_node_basename_list_by_domain_trail_provider_v";
   "Needed-by : ";
   "Definition : a Constructor_node_name is a Node of the Constructor Tree (CT) not Root";
   "Definition : all Constructor_basename in LHS and in RHS";
   "Invariant : is the intersection of LHS and RHS of symbols.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_node_basename_list_by_domain_trail_register";;

let constructor_node_basename_list_by_domain_trail_register : 
    (Trail_t.trail, 
     string list)
    Register_t.register = Register_v.make 137
;;

let store tra_dos nam_cno_l =
  try Register_v.store 
      constructor_node_basename_list_by_domain_trail_register 
      tra_dos 
      nam_cno_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_dos =
  Register_v.is_stored 
    constructor_node_basename_list_by_domain_trail_register tra_dos
;;

(** {6 Retrieving} *)

let retrieve tra_dos =
  try Register_v.retrieve 
      constructor_node_basename_list_by_domain_trail_register 
      tra_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":store")
;;  

let build tra_dos =
  let tra_cat = Trail_v.make "category" "symbol" tra_dos in
  let cbl_l =  
    Constructor_basename_lefthandside_list_by_category_trail_provider_v.provide
      tra_cat
  in
  let ebr_l =  
    Entity_basename_righthandside_list_by_category_trail_provider_v.provide
      tra_cat
  in

  List_v.set_intersection_of_list_of_list cbl_l ebr_l 
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
	    constructor_node_basename_list_by_domain_trail_register 
	    tra_dos
	then retrieve tra_dos
	else build_n_store tra_dos; 
      end
;;
