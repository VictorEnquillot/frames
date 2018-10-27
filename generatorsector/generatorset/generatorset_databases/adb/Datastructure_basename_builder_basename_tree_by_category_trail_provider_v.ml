(** {3 A Provider for the Builder_basename_tree for a Domainset and Formula}  *)

let nam_cod = "Datastructure_basename_builder_basename_tree_by_category_trail_provider_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provide_v";
   "Needs : AGNR:Category_trail_list_by_category_trail_provider_v";
   "Needed-by : IGNR:Builder_trail_fulltree_by_category_trail_provider_v";
   "What-is-it : It provides the Word image of Builder Tree (BT) for a Domainset Trail.";
   "Remark : Formula ONLY is concernd";
 ]
;;

(** {6 Register} *)

let nam_reg = "datastructure_basename_builder_basename_tree_by_category_trail_register";;

let datastructure_basename_builder_basename_tree_by_category_trail_register : 
    (Trail_t.trail, 
     (string * string) Tree_t.tree) 
    Register_t.register = Register_v.make 137;;

let store tra_cat wor_t =
  try Register_v.store datastructure_basename_builder_basename_tree_by_category_trail_register 
      tra_cat 
      wor_t
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_cat =
  Register_v.is_stored datastructure_basename_builder_basename_tree_by_category_trail_register tra_cat
;;

let retrieve tra_cat =
  try Register_v.retrieve 
      datastructure_basename_builder_basename_tree_by_category_trail_register 
      tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
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

let top_entity_basename_of_category_trail tra_cat =
  let nam_ent_l = 
    Constructor_node_basename_list_by_category_trail_provider_v.provide 
      tra_cat
  in
  List.hd nam_ent_l
;;

let build tra_cat =
  let nam_cat = Trail_v.value_of_key_off_trail "category" tra_cat in
 
  match nam_cat with 
  | "formula" ->

      let nam_ent_top = top_entity_basename_of_category_trail tra_cat in
      
      let rec apply nam_ent =
	let tra_ent = Trail_v.make "entity" nam_ent tra_cat in   
	let (nam_dat, nam_bui_l) =  
	  Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v.provide 
	    tra_ent
	in
	
	match nam_bui_l with 
	| [] -> 
	    Tree_v.make_of_leaf (nam_ent, "leaf")
	      
	| h :: tl -> 
	    
	    Tree_v.make_of_node (nam_ent, nam_dat) (List.map apply nam_bui_l) 
	      
	in
      
      apply nam_ent_top
	
  | _ ->   
      Error_messages_v.print_fatal_error nam_cod "build"
	"category were formula" nam_cat	"Check database file"
;;

let build_n_store tra_cat =
  let wrd_t = build tra_cat in
  store tra_cat wrd_t; 
  wrd_t 
;;

let provide tra_cat =
  if Register_v.is_stored datastructure_basename_builder_basename_tree_by_category_trail_register tra_cat 
  then retrieve tra_cat
  else build_n_store tra_cat 
;;
