(** {3 Entity_grandson_symbol_list_by_item_for_symbol_each_grandson_notleaf_tuple_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_symbol_constructor_tree_by_entity_tritup_provider_v";
   "Current : IGNR:Entity_grandson_symbol_list_by_item_for_symbol_each_grandson_notleaf_tuple_provider_v";
   "Needed-by : IGNR:Camlparagraph_symbol_list_by_item_for_symbol_each_grandson_notleaf_abbreviating_grandson_tuple_provider_v";
   "What-is-it : it defines each Entity_current_grandson_symbol list associated with each Item_for_symbol_each_grandson_notleaf tuple";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_grandson_symbol_list_by_item_for_symbol_each_grandson_notleaf_tuple_register";;

let entity_grandson_symbol_list_by_item_for_symbol_each_grandson_notleaf_tuple_register : 
    ((Item_for_symbol_each_grandson_notleaf_symbol_t.item_for_symbol_each_grandson_notleaf_symbol,	
      Usagefile_symbol_t.usagefile_symbol,
      Contentfile_symbol_t.contentfile_symbol,	
      Entity_symbol_t.entity_symbol, 
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol
     ) Sextuplet_t.sextuplet,
     
     Entity_symbol_t.entity_symbol list
       
   ) Register_t.register = Register_v.make 137
;;

let store sex_ign sym_ent_l =
  try Register_v.store
      entity_grandson_symbol_list_by_item_for_symbol_each_grandson_notleaf_tuple_register
      sex_ign 
      sym_ent_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored sex_ign =
  Register_v.is_stored 
    entity_grandson_symbol_list_by_item_for_symbol_each_grandson_notleaf_tuple_register sex_ign
;;

let retrieve sex_ign =
  try Register_v.retrieve 
      entity_grandson_symbol_list_by_item_for_symbol_each_grandson_notleaf_tuple_register sex_ign
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build sex_ign =
  let (sym_ign, sym_usf, sym_cof, sym_ent_top, sym_cat, sym_dos) = sex_ign in
  let sym_ent_fut =
    Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide 
      sym_dos
  in

  let sym_ent_sut =
    Tree_v.subtree_of_node_off_tree 
      sym_ent_top 
      sym_ent_fut
  in  
  match sym_ign with
  | Item_for_symbol_each_grandson_notleaf_symbol_t.Extracting_grandson_notleaf_for_symbol 
  | Item_for_symbol_each_grandson_notleaf_symbol_t.Querying_grandson_notleaf_for_symbol  
  | Item_for_symbol_each_grandson_notleaf_symbol_t.Upgrading_grandson_notleaf_for_symbol  ->
      
      Tree_v.grandson_notleaf_node_list_off_tree sym_ent_sut
	
;;

let build_n_store sex_ign =
  let sym_ent_l = build sex_ign in
  store sex_ign sym_ent_l; 
  sym_ent_l
;;

let provide sex_ign =
  if Register_v.is_stored 
      entity_grandson_symbol_list_by_item_for_symbol_each_grandson_notleaf_tuple_register
      sex_ign 
  then retrieve sex_ign
  else build_n_store sex_ign 
;;


