(** {3 Provides Entity_name list for a Kind_trail}  *)

let nam_cod = "Constructor_leaf_basename_list_by_category_trail_provider_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v";
   "Needed-by : ";
   "What-is-it : it is the list of all LeftHandSide Entity names found in domainset_formulas.set for builders";
   "Definition : Constructor_leaf_name is a Leaf of the Constructor Tree (CT) i.e. a LHS Entity in labels set";
   "Definition : the Builder Tree (BT) has (Constructor_leaf, Datastructure) couples Nodes";
   "Definition : Constructor_leaf_name is left part of a Node of the Builder Tree (CT)";
 ]
;;

(** {6 Registering} *)

let nam_reg = "constructor_leaf_basename_list_by_category_trail_register";;

let constructor_leaf_basename_list_by_category_trail_register : 
    (Trail_t.trail, 
     string list)
    Register_t.register = Register_v.make 137
;;

let store tra_cat nam_ent_l =
  try Register_v.store 
      constructor_leaf_basename_list_by_category_trail_register 
      tra_cat 
      nam_ent_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_cat =
  Register_v.is_stored 
    constructor_leaf_basename_list_by_category_trail_register tra_cat
;;

(** {6 Retrieving} *)

let retrieve tra_cat =
  try Register_v.retrieve 
      constructor_leaf_basename_list_by_category_trail_register 
      tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":store")
;;  

let build tra_cat =
  let nam_ent_str_dol =  
    Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide
      tra_cat
  in
  match nam_ent_str_dol with 
  | [] -> 
      Error_messages_v.print_fatal_error nam_cod "build"
	"Entity_name list is NOT Empty"
	(Format.sprintf "it IS Empty for category trail:@.   %s" (Trail_v.name tra_cat))
	"Check"
  | _ ->
      Doublet_list_v.left_list_off_doublet_list nam_ent_str_dol
;;

let build_n_store tra_cat =
  let nam_ent_l = build tra_cat in
  store tra_cat nam_ent_l; 
  nam_ent_l
;;

let provide tra_cat =
  if Register_v.is_stored 
      constructor_leaf_basename_list_by_category_trail_register 
      tra_cat
  then retrieve tra_cat
  else build_n_store tra_cat; 
;;
