(** {3 Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs  : IGNR:Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v";
   "Current : IGNR:Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v";
   "Needed-by : IGNR:Entity_symbol_path_list_by_item_setuplet_top_symbol_provider_v";
   "What-is-it : ";
   "How-is-it-done : ";
   "Remark : ";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Aliasing} *)

(** {6 Registering} *)

let nam_reg = "entity_symbol_path_tree_by_entity_symbol";;

let entity_symbol_path_tree_by_entity_symbol : 
    ((Entity_proper_symbol_t.entity_proper_symbol, 
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol) Triplet_t.triplet,
     Entity_symbol_t.entity_symbol list Tree_t.tree) 
    Register_t.register = Register_v.make 137;;

let store tri_enp pat_sym_ent_t =
  try Register_v.store 
      entity_symbol_path_tree_by_entity_symbol tri_enp pat_sym_ent_t
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_enp =
  Register_v.is_stored 
    entity_symbol_path_tree_by_entity_symbol tri_enp
;;

let retrieve tri_enp =
  try Register_v.retrieve 
      entity_symbol_path_tree_by_entity_symbol tri_enp
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  
 
let build tri_enp = 
  let sym_ent_t = 
    Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v.provide 
      tri_enp 
  in
  Tree_v.path_tree_off_tree sym_ent_t
;;

let build_n_store tri_enp =
  let pat_sym_ent_t = build tri_enp in
  store tri_enp pat_sym_ent_t; 
  pat_sym_ent_t 
;;

let provide tri_enp =
  if Register_v.is_stored 
      entity_symbol_path_tree_by_entity_symbol tri_enp 
  then retrieve tri_enp
  else build_n_store tri_enp 
;;
