(** {3 Entity_builder_leaf_symbol_list_by_entity_proper_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v";
   "Needs : IGNR:Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v";
   "Needs : IGNR:Entity_main_symbol_by_entity_tritup_provider_v";
   "Current : IGNR:Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v";
   "Needed-by : IGNR:";
   "Definition : the Builder Tree (BT) is a Tree with Entity_proper as Root Builder_main as nodes and Builder_basic as Leaves";
   "How-is-it-done : Entity_proper -- > Builder Once List -> Builder Main list or Basic List";
   "How-is-it-done : Builder -> either Builder Main or Basic";
   "Invariant : Son-builder and Current Node Builder cannot have the same Main";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_builder_symbol_tree_by_entity_tritup_register";;

let entity_builder_symbol_tree_by_entity_tritup_register : 
    (
     (Entity_proper_symbol_t.entity_proper_symbol,
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol
     ) Triplet_t.triplet,
     
     Entity_symbol_t.entity_symbol Tree_t.tree
    
    ) Register_t.register = Register_v.make 137
;;

let store tri_ent sym_ebd_l =
  try Register_v.store
      entity_builder_symbol_tree_by_entity_tritup_register 
      tri_ent 
      sym_ebd_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_ent =
  Register_v.is_stored 
    entity_builder_symbol_tree_by_entity_tritup_register tri_ent
;;

let retrieve tri_ent =
  try Register_v.retrieve 
      entity_builder_symbol_tree_by_entity_tritup_register tri_ent
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let entity_proper_builder_main_of_entity_tritup tri_ent =

  let sym_ebm = Entity_main_symbol_by_entity_tritup_provider_v.provide tri_ent in
  Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ebm

;;

let entity_proper_son_tritup_list_of_entity_builder_symbol_once_list tri_cur sym_ebu_ol =

    let sym_ent_l = List.filter 
	Entity_symbol_v.is_entity_proper_symbol_off_entity_symbol 
	sym_ebu_ol 
    in
    let tri_ent_l = List.map 
	(fun s -> Triplet_v.reset_of_left_off_triplet s tri_cur)
	sym_ent_l
    in
    let sym_ebm_l = List.map
	entity_proper_builder_main_of_entity_tritup 
	tri_ent_l
    in
    let sym_emo_l = 
      List_v.left_once_list_off_list
	sym_ebm_l
    in
    
    List.map 
      (fun s -> Triplet_v.reset_of_left_off_triplet s tri_cur)
      sym_emo_l
;;

let entity_basic_son_tritup_list_of_entity_builder_symbol_once_list sym_ebu_ol =

    List.filter 
	Entity_symbol_v.is_entity_fictive_basicnullary_symbol_off_entity_symbol
	sym_ebu_ol 
;;

let build tri_enp =
  let nam_fun = "build" in

  let rec apply tri_cur =

    let sym_ebu_ol = 
      Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v.provide 
	tri_cur
    in

    let sym_efb_l =
      entity_basic_son_tritup_list_of_entity_builder_symbol_once_list
	sym_ebu_ol 
    in

    let lea_son_l = List.map Tree_v.make_of_leaf sym_efb_l in
    
    let tri_eps_l = 
      entity_proper_son_tritup_list_of_entity_builder_symbol_once_list 
	tri_cur 
	sym_ebu_ol 
    in

    if List.mem tri_cur tri_eps_l (* Recursion : stack overflow *)
    then 
      let sym_cur = Triplet_v.left_off_triplet tri_cur in
      let sym_eps_l = List.map Triplet_v.left_off_triplet tri_eps_l in
      Error_messages_v.print_fatal_error nam_cod nam_fun
	(Format.sprintf "Current Entity Symbol >%s< were NOT also a BT-Son to avoid Recursion"
	   (Entity_proper_symbol_v.fullname sym_cur)
	)
	(Format.sprintf "List of BT-Sons is:@.   %s"
	  (List_v.name_with_separator Entity_proper_symbol_v.fullname "\n   " sym_eps_l)
	)
	"Check formulas.dat file"

    else
      begin
	let tre_son_l = List.map apply tri_eps_l in
	
	let sym_enp = Triplet_v.left_off_triplet tri_cur in
	let sym_cur = Entity_symbol_v.entity_symbol_of_entity_proper_symbol sym_enp in
	
	Tree_v.make_of_node sym_cur (lea_son_l @ tre_son_l)
      end
  in

  apply tri_enp

;;

let build_n_store tri_ent =
  let sym_ebd_l = build tri_ent in
  store tri_ent sym_ebd_l; 
  sym_ebd_l
;;

let provide tri_ent =
  if Register_v.is_stored 
      entity_builder_symbol_tree_by_entity_tritup_register
      tri_ent 
  then retrieve tri_ent
  else build_n_store tri_ent 
;;


