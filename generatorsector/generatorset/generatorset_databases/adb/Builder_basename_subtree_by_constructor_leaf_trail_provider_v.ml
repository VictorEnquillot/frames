(** {3 A Provider for an Builder_basename_subtree for an Constructor_leaf_name}  *)

let nam_cod = "Builder_basename_subtree_by_constructor_leaf_trail_provider_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_leaf_basename_list_by_domain_trail_provider_v.provide";
   "Needs : AGNR:Entity_basic_basename_list_by_domain_trail_provider_v.provide";
   "Needs : AGNR:Builder_basename_list_by_constructor_leaf_trail_provide_v";
   "Needed-by : ";
   "Definition : an Builder is an element of the Builder Tree (BT)";
   "Definition : an Builder has its name defined at the RHS of the domainset_formulas.set";
   "Definition : an Builder_name is either an Entity_basic_name or an Entity_basic_name";
   "Definition : Builder_name list is the union of Entity_basic_name list and Entity_basic_name list"; 
   "What-is-it : It provides the Word image of Builder SubTree (SCT) for an Constructor_leaf Trail";
 ]
;;

(** {6 Register} *)

let nam_reg = "builder_basename_subtree_by_constructor_leaf_trail_register";;

let builder_basename_subtree_by_constructor_leaf_trail_register : 
    (Trail_t.trail, 
     string Tree_t.tree) 
    Register_t.register = Register_v.make 137;;

let store tra_dos wor_t =
  try Register_v.store builder_basename_subtree_by_constructor_leaf_trail_register 
      tra_dos 
      wor_t
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_dos =
  Register_v.is_stored builder_basename_subtree_by_constructor_leaf_trail_register tra_dos
;;

let retrieve tra_dos =
  try Register_v.retrieve 
      builder_basename_subtree_by_constructor_leaf_trail_register 
      tra_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^"::retrieve")
;;  

let print_error_of_tree nam_cod nam_fun tre =
  let nod = Tree_v.root_node_off_tree tre in
  let nod_son_l = Tree_v.topson_node_list_off_tree tre in
  let boo_l = 
    List.map (fun n -> Tree_v.is_leaf_of_node_off_tree n tre) 
      nod_son_l 
  in
  let dbl = Doublet_list_v.make nod_son_l boo_l in
  Error_messages_v.print_fatal_error nam_cod nam_fun
    "tree has inhomogeneous son" 
    (Format.sprintf "node >%s< with son node list:@.   >%s<" 
       nod
       (Doublet_list_v.name_with_separator 
	  (fun s->s) 
	  (fun b -> Format.sprintf "%b" b) 
	  "; " dbl)
    )
    "Check Code database file"
;;

let is_entity_basic_basename_of_entity_trail tra_ent =
  let tra_dos = Trail_v.trail_of_key_off_trail "domain" tra_ent in
  let nam_ent_l =  
    Entity_basic_basename_list_by_domain_trail_provider_v.provide tra_dos
  in
  let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_ent in
  List.mem nam_ent nam_ent_l
;;

let is_constructor_leaf_basename_of_entity_trail tra_ent =
  let tra_dos = Trail_v.trail_of_key_off_trail "domain" tra_ent in
  let nam_ent_l =  
    Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dos
  in
  let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_ent in
  List.mem nam_ent nam_ent_l
;;

let builder_basename_list_of_constructor_leaf_trail = function
  | tra_ent when is_entity_basic_basename_of_entity_trail tra_ent ->

      []   
	
  | tra_ent when is_constructor_leaf_basename_of_entity_trail tra_ent ->

 	Builder_basename_list_by_constructor_leaf_trail_provider_v.provide 
	  tra_ent

  | tra_ent -> 
      let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_ent in
      Error_messages_v.print_fatal_error nam_cod 
	"builder_basename_list_of_constructor_leaf_trail"
	"entity_name were constructor_leaf_name|constructor_leaf_leaf"
	nam_ent  "Check"
 ;;      

let build tra_ent_lea =
  let tra_cat = Trail_v.trail_of_key_off_trail "category" tra_ent_lea in
  let tra_cat_for = Trail_v.replace_of_value_of_key_off_trail "formula" "category" tra_cat in
  
  let rec apply nam_ent =
    let tra_ent = Trail_v.make "entity" nam_ent tra_cat_for in   
    let nam_bui_l = builder_basename_list_of_constructor_leaf_trail tra_ent in
    match nam_bui_l with 
    | [] -> 

      Tree_v.make_of_leaf nam_ent
	  
    | h :: [] ->

	build_of_entity_basename_of_only_builder_name nam_ent h
	  
    | h :: tl -> 
	
	Tree_v.make_of_node nam_ent (List.map apply nam_bui_l) 
	  
  and build_of_entity_basename_of_only_builder_name nam_ent = function

    | w when w = nam_ent ->       (* case vector = vector *)

	Tree_v.make_of_leaf nam_ent
	  
	  
    | w when (String_v.is_basictype_name_of_string w) -> (* case some_fromid = string *)

	Tree_v.make_of_node nam_ent [Tree_v.make_of_leaf w]
	  
	  
    | w -> (* general case entity_name = only-builder-name *)        
	Tree_v.make_of_node nam_ent [apply w]
  in

  let nam_ent_lea = Trail_v.value_of_key_off_trail "entity" tra_ent_lea in
  apply nam_ent_lea
;;

let build_n_store tra_ent_lea =
  let wrd_t = build tra_ent_lea in
  store tra_ent_lea wrd_t; 
  wrd_t 
;;

let provide tra_ent_lea =
  if tra_ent_lea = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_ent_lea were NOT empty" "tra_ent_lea IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "entity" tra_ent_lea) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide" "entity trail" 
	(Format.sprintf "%s instead" (Trail_v.name tra_ent_lea) ) "Check"
    else
      begin
	if Register_v.is_stored 
	    builder_basename_subtree_by_constructor_leaf_trail_register tra_ent_lea 
	then retrieve tra_ent_lea
	else build_n_store tra_ent_lea 
      end
;;
