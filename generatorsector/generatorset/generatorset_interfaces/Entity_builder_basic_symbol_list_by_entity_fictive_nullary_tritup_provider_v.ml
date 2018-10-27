(** {3 Entity_builder_basic_symbol_list_by_entity_fictive_nullary_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Builder_basename_list_by_constructor_leaf_trail_provider_v";
   "Needs : AGNR:Entity_basic_basename_list_by_domain_trail_provider_v";
   "Needs : IGNR:Translating_trail_of_symbol_v";
   "Needs : SGNR:Entity_builder_basic_symbol_v";
   "Current : IGNR:Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_v";
   "Needed-by : ";
   "Definition : an Entity_builder_basic is an Entity corresponding to a basic type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "builder_symbol_list_by_entity_fictive_nullary_tritup_register";;

let builder_symbol_list_by_entity_fictive_nullary_tritup_register : 
    (
     (Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol, 
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol
     ) Triplet_t.triplet,
 
     Entity_fictive_basicnullary_symbol_t.entity_fictive_basicnullary_symbol list     
    
    ) Register_t.register = Register_v.make 137
;;

let store tri_efn sym_ent_sut =
  try Register_v.store 
      builder_symbol_list_by_entity_fictive_nullary_tritup_register tri_efn sym_ent_sut
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_efn =
  Register_v.is_stored 
    builder_symbol_list_by_entity_fictive_nullary_tritup_register tri_efn
;;

let retrieve tri_efn =
  try Register_v.retrieve 
      builder_symbol_list_by_entity_fictive_nullary_tritup_register tri_efn
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Already_stored:"^nam_cod^":retrieve")
;;  

let build tri_efn =
  let (sym_efn, sym_cat, sym_dom) = tri_efn in	
  let sym_ent = Entity_symbol_v.entity_symbol_of_entity_fictive_nullary_symbol sym_efn in
  let tri_ent = Triplet_v.make sym_ent sym_cat sym_dom in
  let tra_ent = Translating_trail_of_symbol_v.entity_trail_of_entity_tritup tri_ent in
  let ban_bui_l = Builder_basename_list_by_constructor_leaf_trail_provider_v.provide tra_ent in
  let tra_dom = Trail_v.trail_of_key_off_trail "domain" tra_ent in 
  let ban_ebb_l = Entity_basic_basename_list_by_domain_trail_provider_v.provide tra_dom in
  let ban_efn_l = List_v.set_intersection_of_list_of_list ban_bui_l ban_ebb_l in

  List.map (fun e -> Entity_fictive_basicnullary_symbol_v.make e "") ban_efn_l
;;

let build_n_store tri_efn =
  let sym_bui_l = build tri_efn in
  store tri_efn sym_bui_l; 
  sym_bui_l
;;

let provide tri_efn =
  if Register_v.is_stored 
      builder_symbol_list_by_entity_fictive_nullary_tritup_register 
      tri_efn 
  then retrieve tri_efn
  else build_n_store tri_efn 
;;
