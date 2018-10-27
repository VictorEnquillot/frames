(** {3 Entity_fictive_nullary_symbol_entity_main_symbol_doublet_list_by_domain_symbol_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v";
   "Current : IGNR:Entity_fictive_nullary_symbol_entity_main_symbol_doublet_list_by_domain_symbol_provider_v";
   "Needed-by : IGNR:";
   "What-is-it : the couple (fictive_nullary, main) for a Localset";
   "How-is-it-done : by extrcating the information for each path of the Localset";
   "Remark : it is built from IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v";
  ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_fictive_symbol_entity_main_symbol_doublet_list_by_domain_symbol_register";;

let entity_fictive_symbol_entity_main_symbol_doublet_list_by_domain_symbol_register : 
    (Domain_symbol_t.domain_symbol, 
     (Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol,
      Entity_symbol_t.entity_symbol) Doublet_list_t.doublet_list)
    Register_t.register = Register_v.make 137
;;

let store sym_dos sym_ent_l =
  try Register_v.store 
      entity_fictive_symbol_entity_main_symbol_doublet_list_by_domain_symbol_register 
      sym_dos 
      sym_ent_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored sym_dos =
  Register_v.is_stored 
    entity_fictive_symbol_entity_main_symbol_doublet_list_by_domain_symbol_register
    sym_dos
;;

let retrieve sym_dos =
  try Register_v.retrieve 
      entity_fictive_symbol_entity_main_symbol_doublet_list_by_domain_symbol_register sym_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let entity_leaf_n_entity_main_of_entity_leaf_path pat_ent_lea =
  let len = List.length pat_ent_lea in
  match len with
  | 0 -> 
      Error_messages_v.print_fatal_error nam_cod 
	"entity_leaf_n_entity_main_of_entity_leaf_path"
	"Non Empty path" "Path is Empty" "Check"

  | 1 ->
        Error_messages_v.print_fatal_error nam_cod 
	"entity_leaf_n_entity_main_of_entity_leaf_path"
	"path length were > 2 " 
	(Format.sprintf "Path is :@.   %s" 
	   (List_v.name_with_separator Entity_symbol_v.fullname ";\n  " pat_ent_lea)
	) 
	"Check"
  
  | 2 ->  (* Special case of Vector or Point *)
      let sym_ent_lea = List.hd pat_ent_lea in
      let sym_efn_lea = Entity_symbol_v.entity_fictive_nullary_symbol_off_entity_symbol sym_ent_lea in
      let sym_ent_mai = Entity_symbol_v.make "entity_proper_with_one_son" "empty" in (*** ??? ***)

      Doublet_v.make sym_efn_lea sym_ent_mai

  | _ -> 
      let sym_ent_lea = List.hd pat_ent_lea in
      let sym_efn_lea = Entity_symbol_v.entity_fictive_nullary_symbol_off_entity_symbol sym_ent_lea in
      let sym_ent_mai = List_v.penultimate_element_off_list pat_ent_lea in

      Doublet_v.make sym_efn_lea sym_ent_mai
;;

let couple_entity_symbol_list sym_ent_ft =
  let sym_ent_lea_l = 
    Tree_v.leaf_node_list_off_tree 
      sym_ent_ft
  in
  let pat_ent_lea_l = List.map 
      (fun n -> Tree_v.path_of_node_off_tree n sym_ent_ft)
      sym_ent_lea_l 
  in
  List.map
    entity_leaf_n_entity_main_of_entity_leaf_path
    pat_ent_lea_l
;;
 
let build sym_dos =
  let sym_ent_ft = 
    Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide 
      sym_dos
  in
      
  couple_entity_symbol_list sym_ent_ft
;;

let build_n_store sym_dos =
  let sym_ent_l = build sym_dos in
  store sym_dos sym_ent_l; 
  sym_ent_l
;;

let provide sym_dos =
  if Register_v.is_stored 
      entity_fictive_symbol_entity_main_symbol_doublet_list_by_domain_symbol_register 
      sym_dos 
  then retrieve sym_dos
  else build_n_store sym_dos 
;;
