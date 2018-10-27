(** {3 Entity_symbol_constructor_tree_by_domain_symbol_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_basename_tree_by_domain_trail_provider_v";
   "Needs : IGNR:Entity_fictive_nullary_symbol_by_constructor_leaf_trail_provider_v";
   "Needs : IGNR:Translating_entity_symbol_of_constructor_basename_v";
   "Current : IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v";
   "What-is-it : It is the Symbol Constructor Tree (CT) for a Domain Symbol";
   "What-is-it : It defines Entity_symbol from";
   "What-is-it : - its Entity name";
   "What-is-it : - its position in the Entity_basename Fulltree";
   "What-is-it : - its property to have or not to have some leaf son if at Top";
   "What-is-it : To be able to define Category_formula of Entity_proper_symbol"; 
   "What-is-it : Top, Son, Current, Fictive are Leaf, Basicnullary";
   "What-is-it : Entity_symbols are REDEFINED in each subtree.";
   "What-is-it : Datastructure entity_symbols are REDEFINED as a unique leaf.";
   "Invariant : Tree_v.is_complete";
   "Invariant : Tree_v.has_all_node_unique_of_tree";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_symbol_constructor_tree_by_domain_symbol_register";;

let entity_symbol_constructor_tree_by_domain_symbol_register : 
    (Domain_symbol_t.domain_symbol, 
     Entity_symbol_t.entity_symbol Tree_t.tree) 
    Register_t.register = Register_v.make 137
;;

let store sym_dom sym_ent_t =
  try Register_v.store 
      entity_symbol_constructor_tree_by_domain_symbol_register sym_dom sym_ent_t
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored sym_dom =
  Register_v.is_stored 
    entity_symbol_constructor_tree_by_domain_symbol_register sym_dom
;;

let retrieve sym_dom =
  try Register_v.retrieve 
      entity_symbol_constructor_tree_by_domain_symbol_register sym_dom
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Already_stored:"^nam_cod^":retrieve")
;;  

let rec entity_symbol_tree_of_domain_trail_of_constructor_basename_tree tra_dom ban_con_t =
  match ban_con_t with
  | Tree_t.Empty -> 

      Tree_v.empty
	
  | Tree_t.Leaf ban_con_lea -> 

      let tra_cat = Trail_v.make "category" "symbol" tra_dom in
      let tra_con_lea = Trail_v.make "entity" ban_con_lea tra_cat in

      let sym_efn =
	Entity_fictive_nullary_symbol_by_constructor_leaf_trail_provider_v.provide 
	  tra_con_lea
      in
	
      let sym_ent = 
	Entity_symbol_v.entity_symbol_of_entity_fictive_nullary_symbol 
	  sym_efn 
      in

      Tree_v.make_of_leaf sym_ent

  | Tree_t.Inner (ban_con_inn, sut_l) -> 

      let cou_son = List.length sut_l in
      let sym_enp = 
	Translating_entity_symbol_of_constructor_basename_v.entity_proper_symbol_of_constructor_notleaf_basename_of_son_count 
	  ban_con_inn 
	  cou_son
      in

      let sym_ent = 
	Entity_symbol_v.entity_symbol_of_entity_proper_symbol 
	  sym_enp
      in

      Tree_v.make_of_node sym_ent 
	(List.map (entity_symbol_tree_of_domain_trail_of_constructor_basename_tree tra_dom) sut_l)
;;

(* {6 Invariants} *)

let is_complete_of_fulltree sym_ent_fut =
  let nam_fun = "is_complete_of_fulltree" in
  if not (Tree_v.is_complete sym_ent_fut)
  then 
    Error_messages_v.print_fatal_error nam_cod nam_fun 
      "Fulltree of Entity Symbol were Complete"
      "it is NOT"
      "Check Constructor_basename tree"
  else
    sym_ent_fut
;;

let has_all_node_unique_of_fulltree sym_ent_fut =
  let nam_fun = "has_all_node_unique_of_fulltree" in
  if not (Tree_v.has_all_node_unique_of_tree sym_ent_fut)
  then 
    Error_messages_v.print_fatal_error nam_cod nam_fun 
      "Fulltree of Entity Symbol had only unique nodes"
      "it has NOT"
      "Check Constructor_basename tree"
  else
    sym_ent_fut
;;

let build sym_dom =
  let tra_dom = 
    Translating_trail_of_symbol_v.domain_trail_of_domain_symbol 
      sym_dom 
  in
  let ban_con_t = 
    Constructor_basename_tree_by_domain_trail_provider_v.provide 
      tra_dom
  in

  let sym_ent_fut =
    entity_symbol_tree_of_domain_trail_of_constructor_basename_tree 
      tra_dom 
      ban_con_t
  in 

  let com_t = is_complete_of_fulltree sym_ent_fut in
  has_all_node_unique_of_fulltree com_t
;;

let build_n_store sym_dom =
  let sym_ent_t = build sym_dom in
  store sym_dom sym_ent_t; 
  sym_ent_t
;;

let provide sym_dom =
  if Register_v.is_stored 
      entity_symbol_constructor_tree_by_domain_symbol_register 
      sym_dom 
  then retrieve sym_dom
  else build_n_store sym_dom 
;;
