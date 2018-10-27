(** {3 Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs  : IGNR:Entity_symbol_constructor_tree_by_localset_tag_provider_v";
   "Current : IGNR:Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v";
   "Needed-by : Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v";
   "Remark : Entity_symbol while already defined in the Fulltree of the Localset";
   "Remark : Proper are Top, Son, Current,";
   "Remark : Fictive are Leaf, Basicnullary";
   "Remark : Item_title are not set yet.";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_symbol_constructor_subtree_by_entity_tritup_register";;

let entity_symbol_constructor_subtree_by_entity_tritup_register : 
    ((Entity_proper_symbol_t.entity_proper_symbol, 
      Category_symbol_t.category_symbol, 
      Domain_symbol_t.domain_symbol) 
       Triplet_t.triplet,
     Entity_symbol_t.entity_symbol Tree_t.tree) 
    Register_t.register = Register_v.make 137
;;

let store tri_enp sym_ent_t =
  try Register_v.store 
      entity_symbol_constructor_subtree_by_entity_tritup_register tri_enp sym_ent_t
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_enp =
  Register_v.is_stored 
    entity_symbol_constructor_subtree_by_entity_tritup_register tri_enp
;;

let retrieve tri_enp =
  try Register_v.retrieve 
      entity_symbol_constructor_subtree_by_entity_tritup_register tri_enp
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build tri_enp =
  let (sym_enp, sym_cat, sym_dos) = tri_enp in
  let sym_ent = Entity_symbol_v.entity_symbol_of_entity_proper_symbol sym_enp in

  let sym_ent_fut = 
    Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide
      sym_dos
  in
  
  try
    Tree_v.subtree_of_node_predicate_off_tree 
      (fun e -> e = sym_ent)
      sym_ent_fut 
      
  with 
    Failure("Not_found:tree_v.ml.subtree_of_node_predicate_off_tree") ->
      let nod_l = Tree_v.node_list_off_tree sym_ent_fut in
      let nod_nam_l = List.map Entity_symbol_v.string_off nod_l in
      let lst_sor = List.sort compare nod_nam_l in
      let str = List_v.name_with_separator (fun s->s) ";\n     " lst_sor in
      Error_messages_v.print_fatal_error nam_cod "build"
	(Format.sprintf "node >%s< exists in tree" (Entity_symbol_v.string_off sym_ent))
	(Format.sprintf "sorted list of tree nodes is:@.    %s" str)
	"Check"
;;

let build_n_store tri_enp =
  let sym_ent_fut = build tri_enp in
  store tri_enp sym_ent_fut; 
  sym_ent_fut
;;

let provide tri_enp =
  if Register_v.is_stored 
      entity_symbol_constructor_subtree_by_entity_tritup_register 
      tri_enp 
  then retrieve tri_enp
  else build_n_store tri_enp 
;;
