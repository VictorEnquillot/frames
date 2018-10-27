(** {3 Builder_node_subtree_by_constructor_leaf_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Database_filename_by_category_trail_provider_v.provide_v";
   "Needs : AGNR:Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provide_v";
   "Needs : AGNR:Category_trail_list_by_category_trail_provider_v";
   "Needs : AGNR:Constructor_basename_leaf_list_by_domain_trail_provider_v";
   "Needs : AGNR:Constructor_node_basename_list_by_category_trail_provider_v";
   "Current : AGNR:Builder_node_subtree_by_constructor_leaf_trail_provider_v";
   "Definition : an Constructor_leaf is a leaf of the Constructor Tree (CT)";
   "Definition : a Builder_node is a couple (Builder_node, Datastructure) : node of the Builder Tree (BT)";
   "What-is-it : It associates an Constructor_leaf name with a Datastructure name";
   "What-is-it : Each node of the Subtree is a couple (Constructor_leaf_name, Datastructure_name)";
   "Remark : Formulas ONLY is concerned";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let nam_reg = "builder_node_subtree_by_constructor_leaf_trail_register";;

let builder_node_subtree_by_constructor_leaf_trail_register : 
    (Trail_t.trail, 
     (string * string) Tree_t.tree) 
    Register_t.register = Register_v.make 137;;

let store tra_cnl bno_sut =
  try Register_v.store builder_node_subtree_by_constructor_leaf_trail_register 
      tra_cnl 
      bno_sut
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_cnl =
  Register_v.is_stored builder_node_subtree_by_constructor_leaf_trail_register tra_cnl
;;

let retrieve tra_cnl =
  try Register_v.retrieve 
      builder_node_subtree_by_constructor_leaf_trail_register 
      tra_cnl
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build tra_cnl =
  let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_cnl in
  let nam_cat = Trail_v.value_of_key_off_trail "category" tra_cnl in
  
  match nam_cat with 
  | "formula" -> (* *** Improve : possibly not necessary *** *)
      
      let rec apply nam_e =
	let tra_e = Trail_v.replace_of_value_of_key_off_trail nam_e "entity" tra_cnl in
	let (nam_d, nam_bui_l) =  
	  Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v.provide 
	    tra_e
	in
	
	match nam_bui_l with 
	| [] -> 
	    Tree_v.make_of_leaf (nam_e, "leaf")
	      
	| h :: tl -> 
	    Tree_v.make_of_node (nam_e, nam_d) (List.map apply nam_bui_l) 
	      
      in
      
      apply nam_ent
	
  | _ ->   
      Error_messages_v.print_fatal_error nam_cod "build"
	"entity were formula" nam_cat "Check database file"
;;

let build_n_store tra_cnl =
  let wrd_t = build tra_cnl in
  store tra_cnl wrd_t; 
  wrd_t 
;;

let provide tra_cnl =
  if tra_cnl = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_cnl were NOT empty" "tra_cnl IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "entity" tra_cnl) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide" "entity trail" 
	(Format.sprintf "%s instead" (Trail_v.name tra_cnl) ) "Check"
    else
      begin
	if not (Tools_agnr_2_v.is_constructor_leaf_basename_of_entity_trail tra_cnl) (* *** Improve : needs typing *** *)
	then
	  begin
	    let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_cnl in
	    let tra_cat = Trail_v.trail_of_key_off_trail "category" tra_cnl in
	    let fin = filename_of_category_trail tra_cat in
	    Error_messages_v.print_fatal_error nam_cod "provide"
	      "entity were a Leaf of the Constructor Tree" 
	      (Format.sprintf ">%s<" nam_ent) 
	      (Format.sprintf "Check file >%s<" (Filename_p.fullname fin) )
	  end
	else
	  begin 
	    if Register_v.is_stored 
		builder_node_subtree_by_constructor_leaf_trail_register 
		tra_cnl 
	    then retrieve tra_cnl
	    else build_n_store tra_cnl 
	  end
      end
;;
