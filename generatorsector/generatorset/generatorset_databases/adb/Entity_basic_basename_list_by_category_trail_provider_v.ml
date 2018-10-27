(** {3 Provides Entity_basic_name list for a Category_trail}  *)

let nam_cod = "Entity_basic_basename_list_by_category_trail_provider_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v";
   "Needed-by : ";
   "What-is-it : it is the list Entity names found in domainset_formulas.set NOT beeing Entity_node nor Constructor_leaf";
   "Definition : an Entity_basic is a Leaf of the Builder Tree (BT) i.e. appears only at the LHS formulas.set";
   "Definition : a Builder_node is an element of the Builder Tree (BT)";
   "Definition : a Builder is a either a Constructor_notleaf or Basic";
 ]
;;

(** {6 Registering} *)

let nam_reg = "entity_basic_basename_list_by_category_trail_register";;

let entity_basic_basename_list_by_category_trail_register : 
    (Trail_t.trail, 
     string list)
    Register_t.register = Register_v.make 137
;;

let store tra_cat ban_enb_l =
  try Register_v.store 
      entity_basic_basename_list_by_category_trail_register 
      tra_cat 
      ban_enb_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_cat =
  Register_v.is_stored 
    entity_basic_basename_list_by_category_trail_register tra_cat
;;

(** {6 Retrieving} *)

let retrieve tra_cat =
  try Register_v.retrieve 
      entity_basic_basename_list_by_category_trail_register 
      tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":store")
;;  

let build tra_cat =
  let nam_ent_con_l =  
    Constructor_basename_list_by_category_trail_provider_v.provide
      tra_cat
  in
  let nam_ent_bui_l =  
    Builder_basename_list_by_domain_trail_provider_v.provide
      tra_cat
  in
  let int_l = 
    List_v.intersection_of_list_of_list 
      nam_ent_con_l 
      nam_ent_bui_l 
  in
  List_v.exclusion_of_list_of_list nam_ent_bui_l int_l
;;

let build_n_store tra_cat =
  let ban_enb_l = build tra_cat in
  store tra_cat ban_enb_l; 
  ban_enb_l
;;

let provide tra_cat =
  if Register_v.is_stored 
      entity_basic_basename_list_by_category_trail_register 
      tra_cat
  then retrieve tra_cat
  else build_n_store tra_cat; 
;;
