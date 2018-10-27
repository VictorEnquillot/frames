(** {3 A Provider for the list of Builder_tree for a Domainset}  *)

let nam_cod = "Builder_basename_tree_list_by_domain_trail_provider_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Builder_root_basename_list_by_domain_trail_provider_v";
   "Needs : AGNR:Builder_basename_subtree_by_constructor_leaf_trail_provide_v";
   "Needed-by : ";
   "Definition : an Builder is an element of the Builder Tree (BT)";
   "Definition : an Builder has its name defined at the RHS of the domainset_formulas.set";
   "Definition : an Builder_name is either an Entity_basic_name or an Entity_basic_name";
   "Definition : an Builder_root is an Constructor_leaf NOT being a Builder";
   "Definition : an Builder_root is Always at LHS in the domainset_formulas.set";
   "Definition : Builder_name list is the union of Entity_basic_name list and Entity_basic_name list"; 
   "What-is-it : it provides the list of all INDEPENDANT Builder Tree (CT) for a Domainset Trail";
   "How-is-it-done : by building the list of all Trees having a Builder_root as Root";
 ]
;;

(** {6 Register} *)

let nam_reg = "builder_basename_tree_list_by_domain_trail_register";;

let builder_basename_tree_list_by_domain_trail_register : 
    (Trail_t.trail, 
     (string Tree_t.tree) list) 
    Register_t.register = Register_v.make 137;;

let store tra_dos wor_t =
  try Register_v.store builder_basename_tree_list_by_domain_trail_register 
      tra_dos 
      wor_t
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_dos =
  Register_v.is_stored builder_basename_tree_list_by_domain_trail_register tra_dos
;;

let retrieve tra_dos =
  try Register_v.retrieve 
      builder_basename_tree_list_by_domain_trail_register 
      tra_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^"::retrieve")
;;  

let build tra_dos =
  let tra_cat_for = Trail_v.make "category" "formula" tra_dos in
  let nam_bui_roo_l = 
    Builder_root_basename_list_by_domain_trail_provider_v.provide 
      tra_dos 
  in
  let tra_bui_roo_l =
    List.map 
      (fun e -> Trail_v.make "entity" e tra_cat_for)
      nam_bui_roo_l
  in   

  List.map 
    Builder_basename_subtree_by_constructor_leaf_trail_provider_v.provide
    tra_bui_roo_l
;;

let build_n_store tra_dos =
  let nam_bui_tl = build tra_dos in
  store tra_dos nam_bui_tl; 
  nam_bui_tl 
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
	if Register_v.is_stored builder_basename_tree_list_by_domain_trail_register tra_dos 
	then retrieve tra_dos
	else build_n_store tra_dos 
      end
;;
