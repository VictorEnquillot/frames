(** {3 Builder_root_basename_list_by_domain_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  ["Needs : AGNR:Builder_basename_list_by_domain_trail_provider_v";
   "Needs : AGNR:Constructor_leaf_basename_list_by_domain_trail_provider_v";
   "Current : AGNR:Builder_root_basename_list_by_domain_trail_provider_v";
   "Needed-by : ";
   "What-is-it : It provides the list of all Builder_tree Roots in a Domainset";
   "How-is-it-done : by extracting all Constructor_leaf_name NOT being Builder from Constructor_leaf_basename_list";
   "Remark : a Constructor_leaf is not a type. It cannot be a Builder";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let nam_reg = "builder_root_basename_list_by_domain_trail_register";;

let builder_root_basename_list_by_domain_trail_register : 
    (Trail_t.trail, 
     string list) 
    Register_t.register = Register_v.make 137;;

let store tra_dos nam_bui_roo_l =
  try Register_v.store builder_root_basename_list_by_domain_trail_register 
      tra_dos 
      nam_bui_roo_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_dos =
  Register_v.is_stored builder_root_basename_list_by_domain_trail_register tra_dos
;;

let retrieve tra_dos =
  try Register_v.retrieve 
      builder_root_basename_list_by_domain_trail_register 
      tra_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^"::retrieve")
;;  

let build tra_dos =
  let nam_bui_l = 
    Builder_basename_list_by_domain_trail_provider_v.provide
      tra_dos
  in
  let nam_ent_lea_l =
    Constructor_leaf_basename_list_by_domain_trail_provider_v.provide
      tra_dos 
  in
  List_v.exclusion_off_list_of_list nam_ent_lea_l nam_bui_l
;;

let build_n_store tra_dos =
  let nam_roo_l = build tra_dos in
  store tra_dos nam_roo_l;
  nam_roo_l
;;

let provide tra_dos =
  if not (Trail_v.has_of_head_key_off_trail "domain" tra_dos) 
  then 
    Error_messages_v.print_fatal_error nam_cod "provide"
      "domain trail"
      (Format.sprintf "%s instead" (Trail_v.name tra_dos))
      "Check"
  else
    begin
      if Register_v.is_stored builder_root_basename_list_by_domain_trail_register tra_dos 
      then retrieve tra_dos
      else build_n_store tra_dos 
    end
;;
