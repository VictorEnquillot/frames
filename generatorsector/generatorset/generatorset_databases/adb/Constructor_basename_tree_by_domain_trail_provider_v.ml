(** {3 Constructor_basename_tree_by_domain_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_notleaf_basename_list_by_domain_trail_provider_v.provide";
   "Needs : AGNR:Constructor_leaf_basename_list_by_domain_trail_provider_v.provide";
   "Needs : AGNR:Constructor_basename_list_by_constructor_trail_provide_v";
   "Current : AGNR:Constructor_basename_tree_by_domain_trail_provider_v";
   "Needed-by : ";
   "What-is-it : It provides the Constructor_basename Tree (CT) for a Domain Trail";
   "Definition : a Constructor is an element of the Constructor Tree (CT)";
   "Definition : the Constructor_root is the Root of the Constructor Tree (CT)";
   "Definition : a Constructor_node is a Node of the Constructor Tree (CT) i.e. a LHS Entity in symbols.dat";
   "Definition : a Constructor_leaf is a Leaf of the Constructor Tree (CT) i.e. a LHS Entity in formulas.dat";
   "Invariant : The CT has all node unique because it is a partition of a Set";
   "Invariant : The CT is complete";
   "Invariant : The CT leaves are all in Constructor_leaf_basename_list_by_domain_trail_provider_v";
   "Remark : Symbols and Formulas have ISOMORPHOUS Constructor Tree";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let nam_reg = "constructor_basename_tree_by_domain_trail_register";;

let constructor_basename_tree_by_domain_trail_register : 
    (Trail_t.trail, 
     string Tree_t.tree) 
    Register_t.register = Register_v.make 137;;

let store tra_dom bna_con_t =
  try Register_v.store constructor_basename_tree_by_domain_trail_register 
      tra_dom 
      bna_con_t
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_dom =
  Register_v.is_stored 
    constructor_basename_tree_by_domain_trail_register 
    tra_dom
;;

let retrieve tra_dom =
  try Register_v.retrieve 
      constructor_basename_tree_by_domain_trail_register 
      tra_dom
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

(* {6 Invariants} *)

let are_leaves_ok_of_domainset_trail_of_tree tra_dom con_t =
  let nam_fun = "are_leaves_ok_of_domainset_trail_of_tree" in

  let lea_l = Tree_v.leaf_node_list_off_tree con_t in
  let cnl_l = Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dom in
  let exc_l = List_v.exclusive_union_of_list_of_list lea_l cnl_l in
  if exc_l <> []
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "Constructor Tree leaf list has same elements as Constructor_leaf_basename_list for domainset" 
      (Format.sprintf "exclusion list is :@.      %s"
	 (List_v.name_with_separator Utilities_v.identity ";\n  " exc_l)
      )
      "Check symbols.dat file"
  else 
    con_t
;;

let is_complete_of_tree con_t =
  let nam_fun = "is_complete_of_fulltree" in
  if not (Tree_v.is_complete con_t)
  then 
    Error_messages_v.print_fatal_error nam_cod nam_fun 
      "Fulltree of Entity Symbol were Complete"
      "it is NOT"
      "Check"
  else
    con_t
;;

let has_all_node_unique_of_tree tra_dom con_t =
  let nam_fun = "has_all_node_unique_of_tree" in
  if not (Tree_v.has_all_node_unique_of_tree con_t) 
  then
    begin
      let nam_dom = Trail_v.value_of_key_off_trail "domain" tra_dom in
      Error_messages_v.print_fatal_error nam_cod nam_fun
	"Constructor_basename_tree had all node unique"
	(Format.sprintf "these nodes are not unique :@.    %s" 
	   (List_v.name_with_separator Utilities_v.identity ";\n      " 
	      (Tree_v.non_unique_node_list_off_tree con_t))
	)
	(Format.sprintf "Check file %s_symbols.dat" nam_dom)
    end
  else 
    con_t
;;

let build tra_dom =
  let nam_dom = Trail_v.value_of_key_off_trail "domain" tra_dom in
  let tra_cat = Trail_v.make "category" "symbol" tra_dom in
  
  let rec apply bna_con =
    let tra_ent = Trail_v.make "entity" bna_con tra_cat in   

    let nam_con_l = 
      Constructor_basename_list_by_constructor_trail_provider_v.provide 
	tra_ent 
    in
    match nam_con_l with 
    | [] -> 

      Tree_v.make_of_leaf bna_con
	  
    | h :: [] -> (*entity_name = only-constructor-name *)        

	Tree_v.make_of_node bna_con [apply h]

    | h :: tl -> 
	
	Tree_v.make_of_node bna_con (List.map apply nam_con_l) 
  in
  
  let con_t = apply nam_dom in

  let com_t = is_complete_of_tree con_t in
  let uni_t = has_all_node_unique_of_tree tra_dom com_t in
  are_leaves_ok_of_domainset_trail_of_tree tra_dom uni_t
;;

let build_n_store tra_dom =
  let con_t = build tra_dom in
  store tra_dom con_t; 
  con_t 
;;

let provide tra_dom =
    if not (Trail_v.has_of_head_key_off_trail "domain" tra_dom) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide"
	"domain trail"
	(Format.sprintf "%s instead" (Trail_v.name tra_dom))
	"Check"
    else
      begin
	if Register_v.is_stored constructor_basename_tree_by_domain_trail_register tra_dom 
	then retrieve tra_dom
	else build_n_store tra_dom 
      end
;;
