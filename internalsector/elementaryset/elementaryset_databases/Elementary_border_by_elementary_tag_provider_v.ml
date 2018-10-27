(** {3 Elementary_border_by_elementary_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_border_by_elementary_tag_provider_v";
   "Register : DELE:Elementary_border_by_elementary_tag_register_v";
   "Needs : DELE:Elementary_tag_tree_by_elementary_tag_provider_v";
   "Needs : SELE:Elementary_symbol_v";
   "Needed-by :"; 
   "Definition : for any Entity its B-Tree is the Tree of the Entity Tags necessary to build its value";
   "Definition : the Context gathers entities at the top of the B-Tree of a Domain (Domain, Database, Databox)";
   "Definition : the Body gathers entities of the B-Tree of a Domain being neither Context nor Fence";
   "Definition : the Fence is the Tag list of the Leaf entities of the B-Tree of a Domain";
   "Definition : the Border is the Tag list of the father entities of the Fence of the Elementary Domain";
   "Definition : a Builder (for an Entity of a Domain) is a son of its Builder-Subtree";
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Building is the same Datastructure as Container filled with Builders"; 
   "Definition : a Stalk is a type with only one constructor of nothing";
   "Definition : a Bud type is a type with only one constructor of string";
   "Definition : a Stem type has only constructor of string";
   "Definition : a Branch type has only constructors of nothing";
   "Definition : a Trunc type has only constructors of constructor";
   "What-is-it : the Elementary_border_coordinate_tag Fence for any Elementary_tag";
   "How-is-it-done : by extracting it from B-SubTree Rooted by Elementary_tag";
   "How-is-it-done : by getting the Deepfence not the Fence";
   "Example : for a Coordinate_tuple fence is Builder Coordinate Tag list";
   "Example : for a Coordinate fence is itself";
   "Example : for a Coordinate_tuple fence is Elementary Units Tag list";
   "Improve : define a List of Border Elementary_border_all_list_by_unit_provider_v.provide ()";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_ele =
  let tag_ele_st = Elementary_tag_subtree_by_elementary_tag_provider_v.provide tag_ele in

  let tag_ele_l =
    try
      Tree_v.node_list_of_node_predicate_off_tree
	(fun (s, i) ->
	  Elementary_symbol_v.is_elementary_border_symbol_off_elementary_symbol s
	)
	tag_ele_st
    with Failure _ -> []
  in
  List.map 
    (Tag_v.map_entity
       Elementary_symbol_v.elementary_border_symbol_off_elementary_symbol)
    tag_ele_l
;;

(** {6 Storing} *)

let store tag_ele val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Elementary_border_by_elementary_tag_register_v.store nam_mod tag_ele val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_ele =
  let val_ = build tag_ele in
  store tag_ele val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_ele =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Elementary_border_by_elementary_tag_register_v.retrieve nam_mod tag_ele in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_ele =
  if Elementary_border_by_elementary_tag_register_v.is_stored tag_ele
  then retrieve tag_ele
  else build_n_store tag_ele
;;

(** {6 Providing} *)

let provide tag_ele =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_ele in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Elementary_border_by_elementary_tag_provider_v.ml on mercredi 25 mai 2016, 10:03:58 (UTC+0200) *)
