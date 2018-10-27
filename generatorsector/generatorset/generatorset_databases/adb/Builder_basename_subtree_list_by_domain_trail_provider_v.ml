(** {3 A Provider for the Constructor_tree for a Domainset}  *)

let nam_cod = "Builder_basename_subtree_list_by_domain_trail_provider_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_leaf_basename_list_by_domain_trail_provider_v.provide";
   "Needs : AGNR:Builder_basename_subtree_by_constructor_leaf_trail_provider_v";
   "Needed-by : ";
   "What-is-it : It provides the list of all independant Builder_name trees in a Domainset";
   "How-is-it-done : ";
 ]
;;

(** {6 Register} *)

let nam_reg = "builder_basename_subtree_list_by_domain_trail_register";;

let builder_basename_subtree_list_by_domain_trail_register : 
    (Trail_t.trail, 
     (string Tree_t.tree) list) 
    Register_t.register = Register_v.make 137;;

let store tra_dos nam_bui_stl =
  try Register_v.store builder_basename_subtree_list_by_domain_trail_register 
      tra_dos 
      nam_bui_stl
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_dos =
  Register_v.is_stored builder_basename_subtree_list_by_domain_trail_register tra_dos
;;

let retrieve tra_dos =
  try Register_v.retrieve 
      builder_basename_subtree_list_by_domain_trail_register 
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

let is_constructor_leaf_basename_of_entity_trail tra_ent =
  let tra_dos = Trail_v.trail_of_key_off_trail "domain" tra_ent in
  let nam_ent_l =  
    Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dos
  in
  let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_ent in
  List.mem nam_ent nam_ent_l
;;

let is_constructor_node_basename_of_entity_trail tra_ent =
  let tra_dos = Trail_v.trail_of_key_off_trail "domain" tra_ent in
  let nam_ent_l =  
    Constructor_node_basename_list_by_domain_trail_provider_v.provide tra_dos
  in
  let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_ent in
  List.mem nam_ent nam_ent_l
;;

let builder_basename_subtree_list_of_domainset_trail tra_dos =
;;      

let build_n_store tra_dos =
  let nam_ent_lea_l = 
    Constructor_leaf_basename_list_by_domain_trail_provider_v.provide
      tra_dos 
  in
  let nam_bui_stl = 
    List.map 
      Builder_basename_subtree_by_constructor_leaf_trail_provider_v.provide
      nam_ent_lea_l
  in

  store tra_dos nam_bui_stl;
  nam_bui_stl
;;

let provide tra_dos =
    if not (Trail_v.has_of_head_key_off_trail "domain" tra_dos) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide"
	"domain trail"
	(Format.sprintf "%s instead" (Trail_v.name tra_dos))
	"Check"
    else
      begin
	if Register_v.is_stored builder_basename_subtree_list_by_domain_trail_register tra_dos 
	then retrieve tra_dos
	else build_n_store tra_dos 
      end
;;
