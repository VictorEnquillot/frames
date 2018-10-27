(** {3 Kind_name_by_constructor_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_basename_kind_basename_doublet_list_by_domain_trail_provider_v";
   "Needs : AGNR:Constructor_basename_list_by_domain_trail_provider_v";
   "Current : AGNR:Kind_name_by_constructor_trail_provider_v";
   "Definition : a Kind_name is either constructors or builders or description";
   "What-is-it : it provides the Kind_name associated with a given Constructor_basename";
   "How-is-it-done : by reducing the above Doublet_list";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "kind_basename_by_constructor_trail_register";;

let kind_basename_by_constructor_trail_register : 
    (Trail_t.trail, 
     string) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_con =
  try Register_v.retrieve kind_basename_by_constructor_trail_register tra_con
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith 
      "Not_stored:Kind_name_by_constructor_trail_provider_v.ml.retrieve"
;;  

let store tra_con nam_kin =
  let nam_fun = "store" in
  try Register_v.store kind_basename_by_constructor_trail_register tra_con nam_kin
  with Failure ("Already_stored:Register_v.ml:store") ->
    Utilities_v.failwith_of_message_of_code_name_of_function_name
      "Already_stored:Register_v.ml:store" nam_cod nam_fun
;;

let is_stored tra_con =
  Register_v.is_stored kind_basename_by_constructor_trail_register tra_con
;;

let is_constructor_basename_of_entity_trail tra_ent =
  let tra_dos = Trail_v.trail_of_key_off_trail "domain" tra_ent in
  let nam_ent_l =  
    Constructor_basename_list_by_domain_trail_provider_v.provide tra_dos
  in
  let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_ent in
  List.mem nam_ent nam_ent_l
;;

let build tra_con =
  let nam_fun = "build" in

  if not (is_constructor_basename_of_entity_trail tra_con) 
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      (Format.sprintf "Entity >%s< were a Constructor" (Trail_v.name tra_con) )
      "it is NOT" "Check LHS of equal in domainset_symbols.set"
  else
    begin
    
      let tra_dos = Trail_v.trail_of_key_off_trail "domain" tra_con in 
      let dou_ck_l = 
	Constructor_basename_kind_basename_doublet_list_by_domain_trail_provider_v.provide
	  tra_dos
      in
      let ban_con = Trail_v.value_of_key_off_trail "entity" tra_con in 
      let dou_ck = 
	try Doublet_list_v.find_if_left (fun e -> e = ban_con) dou_ck_l
	with Failure "Not_found:Doublet_list_v.ml:find_if_left" ->
	  Utilities_v.failwith_of_message_of_code_name_of_function_name 
	    "Constructor_basename_not_found" nam_cod nam_fun
      in
      
      Doublet_v.right_off_doublet dou_ck

    end
;;

let build_n_store tra_con =
  let ban_kin = build tra_con in
  store tra_con ban_kin;
  ban_kin
;;

let provide tra_con =
  if tra_con = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_con were NOT empty" "tra_con IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "entity" tra_con) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide" "entity trail" 
	(Format.sprintf "%s instead" (Trail_v.name tra_con) ) "Check"
    else
      begin
      if Register_v.is_stored 
	  kind_basename_by_constructor_trail_register 
	  tra_con
      then retrieve tra_con
      else build tra_con 
    end
;;
