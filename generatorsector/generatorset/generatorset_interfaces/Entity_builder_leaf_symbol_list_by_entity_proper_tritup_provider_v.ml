(** {3 Entity_builder_leaf_symbol_list_by_entity_proper_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v";
   "Current : IGNR:Entity_builder_leaf_symbol_list_by_entity_proper_tritup_provider_v";
   "Needed-by : IGNR:";
   "Definition : an Entity_builder_data is an Entity_fictive_basicnullary Leaf of the Builder_tree of a Builder Proper";
   "Remark : is NOT a Once list";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_builder_data_symbol_by_entity_tritup_register";;

let entity_builder_data_symbol_by_entity_tritup_register : 
    (
     (Entity_proper_symbol_t.entity_proper_symbol,
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol
     ) Triplet_t.triplet,
     
     Entity_fictive_basicnullary_symbol_t.entity_fictive_basicnullary_symbol list
    
    ) Register_t.register = Register_v.make 137
;;

let store tri_enp sym_ebd_l =
  try Register_v.store
      entity_builder_data_symbol_by_entity_tritup_register 
      tri_enp 
      sym_ebd_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_enp =
  Register_v.is_stored 
    entity_builder_data_symbol_by_entity_tritup_register tri_enp
;;

let retrieve tri_enp =
  try Register_v.retrieve 
      entity_builder_data_symbol_by_entity_tritup_register tri_enp
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let entity_builder_data_symbol_list_of_entity_proper_tritup tri_enp =

  let sym_enb_t =  
    Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide
      tri_enp
  in
  
  let sym_ent_l = Tree_v.leaf_node_list_off_tree sym_enb_t in

  List.map 
    Entity_symbol_v.entity_fictive_basicnullary_symbol_off_entity_symbol 
    sym_ent_l
;;

let build tri_enp =
  (* let nam_fun = "build" in *)
  
  let (sym_enp, sym_cat, sym_dom) = tri_enp in
  match sym_dom with 

  | Domain_symbol_t.Generator -> 

      [Entity_fictive_basicnullary_symbol_v.make "string" ""]
	
  | Domain_symbol_t.Chemical
  | Domain_symbol_t.Fake
  | Domain_symbol_t.Figure
  | Domain_symbol_t.Common
  | Domain_symbol_t.Database _
  | Domain_symbol_t.Elementary
  | Domain_symbol_t.Input _
  | Domain_symbol_t.Operator
  | Domain_symbol_t.Property
  | Domain_symbol_t.Logic
  | Domain_symbol_t.Music
  | Domain_symbol_t.Natural ->
      
      entity_builder_data_symbol_list_of_entity_proper_tritup tri_enp

  (* | _ -> *)
  (*     Error_messages_v.print_fatal_error nam_cod nam_fun  *)
  (* 	(Format.sprintf "Domain >%s< were implemented" (Domain_symbol_v.name sym_dom)) *)
  (* 	"it is NOT yet" *)
  (* 	"please report" *)
;;

let build_n_store tri_enp =
  let sym_ebd_l = build tri_enp in
  store tri_enp sym_ebd_l; 
  sym_ebd_l
;;

let provide tri_enp =
  if Register_v.is_stored 
      entity_builder_data_symbol_by_entity_tritup_register
      tri_enp 
  then retrieve tri_enp
  else build_n_store tri_enp 
;;


