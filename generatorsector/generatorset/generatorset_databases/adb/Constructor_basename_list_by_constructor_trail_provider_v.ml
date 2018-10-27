(** {3 Constructor_basename_list_by_constructor_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_notleaf_basename_list_by_constructor_trail_provider_v.provide";
   "Needs : AGNR:Constructor_leaf_basename_list_by_constructor_trail_provider_v.provide";
   "Needs : AGNR:Constructor_basename_list_by_constructor_notleaf_trail_provide_v";
   "Current : AGNR:Constructor_basename_list_by_constructor_trail_provider_v";
   "Needed-by : ";
   "What-is-it : It generalizes Constructor_basename_list_by_constructor_notleaf_trail_provide_v to any Constructor_basename";
   "Definition : a Constructor is an element of the Constructor Tree (CT)";
   "Definition : the Constructor_root is the Root of the Constructor Tree (CT)";
   "Definition : a Constructor_node is a Node of the Constructor Tree (CT) i.e. a LHS Entity in symbols.dat";
   "Definition : a Constructor_leaf is a Leaf of the Constructor Tree (CT) i.e. a LHS Entity in formulas.dat";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let nam_reg = "constructor_basename_list_by_constructor_trail_register";;

let constructor_basename_list_by_constructor_trail_register : 
    (Trail_t.trail, 
     string list) 
    Register_t.register = Register_v.make 137;;

let store tra_con bna_con_l =
  try Register_v.store constructor_basename_list_by_constructor_trail_register 
      tra_con 
      bna_con_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_con =
  Register_v.is_stored 
    constructor_basename_list_by_constructor_trail_register 
    tra_con
;;

let retrieve tra_con =
  try Register_v.retrieve 
      constructor_basename_list_by_constructor_trail_register 
      tra_con
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^"::retrieve")
;;  

let is_constructor_leaf_basename_of_entity_trail tra_ent =
  let tra_dom = Trail_v.trail_of_key_off_trail "domain" tra_ent in
  let bna_col_l =  
    Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dom
  in
  let bna_col = Trail_v.value_of_key_off_trail "entity" tra_ent in
  List.mem bna_col bna_col_l
;;

let is_constructor_notleaf_basename_of_entity_trail tra_ent =
  let tra_con = Trail_v.trail_of_key_off_trail "domain" tra_ent in
  let bna_con_l =  
    Constructor_notleaf_basename_list_by_domain_trail_provider_v.provide tra_con
  in
  let bna_con = Trail_v.value_of_key_off_trail "entity" tra_ent in
  List.mem bna_con bna_con_l
;;

(* {6 Invariants} *)


let build tra_con =
  let nam_fun = "build" in
      
    match tra_con with
    | t when is_constructor_leaf_basename_of_entity_trail t ->
	[]   
	  
    | t when is_constructor_notleaf_basename_of_entity_trail t ->
	Constructor_basename_list_by_constructor_notleaf_trail_provider_v.provide t
	  
    | t -> 
	let nam_ent = Trail_v.value_of_key_off_trail "entity" t in
	Error_messages_v.print_fatal_error nam_cod nam_fun
	  "Constructor_basename were notleaf|leaf"
	  nam_ent  
	  "Check"
;;      

let build_n_store tra_con =
  let con_t = build tra_con in
  store tra_con con_t; 
  con_t 
;;

let provide tra_con =
  if not (Trail_v.has_of_head_key_off_trail "entity" tra_con) 
  then 
    Error_messages_v.print_fatal_error nam_cod "provide"
      "entity trail"
      (Format.sprintf "%s instead" (Trail_v.name tra_con))
      "Check"
  else
    begin
      if Register_v.is_stored constructor_basename_list_by_constructor_trail_register tra_con 
      then retrieve tra_con
      else build_n_store tra_con 
    end
;;
