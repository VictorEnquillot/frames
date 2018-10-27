(** {3 Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Database_filename_by_category_trail_provider_v";
   "Needs : AGNR:Tools_agnr_1_v";
   "Needs : AGNR:Tools_agnr_2_v";
   "Needs : AGNR:Righthandside_string_by_constructor_leaf_trail_provider_v";
   "Current : AGNR:Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v";
   "Needed-by : IGNR:Contentfile_symbol_list_by_entity_proper_tag_provider_v";
   "Needed-by : IGNR:Entity_proformula_by_entity_proper_tag_provider_v";
   "Definition : a Builder_node is a couple (Builder_node, Datastructure) : node of the Builder Tree (BT)";
   "What-is-it : it splits Righthandside_string into a Builder_node list for an Entity trail";
   "Invariant : Invariant_v.is_valid_of_datastructure_basename ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_register";;

let datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_register : 
    (Trail_t.trail, 
     (string, string list) Doublet_t.doublet ) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_col =
  try Register_v.retrieve 
      datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_register 
      tra_col
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    let str_reg = 
      Register_v.string_of_register 
	Trail_v.name 
	(Doublet_v.name Utilities_v.identity (List_v.name_with_separator Utilities_v.identity "; ") )
	"\n" 
	datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_register
    in
    let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_col in
    let tra_cat = List.tl tra_col in
    let nam_fil = Filename_p.name
        (Database_filename_by_category_trail_provider_v.provide tra_cat) 
    in
    Error_messages_v.print_fatal_error 
      nam_cod 
      "retrieve"
      (Format.sprintf "key >%s<@.    were already stored"
         (Trail_v.name tra_col)) 
      (Format.sprintf "no such key in register dumped below:@.        %s" str_reg) 
      (Format.sprintf "check entry >%s< in file:@.       >%s<" nam_ent nam_fil)
;;  

let store tra_col str_str_l_dou =
  try Register_v.store 
      datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_register 
      tra_col str_str_l_dou
  with Failure ("Already_stored:Register_v.ml:store") ->
    let str_old_l = retrieve tra_col in
    if str_old_l <> str_str_l_dou
    then
      begin
	let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_col in
	let tra_cat = List.tl tra_col in
	let nam_fil = 
          Filename_p.name
            (Database_filename_by_category_trail_provider_v.provide tra_cat) 
	in
	Error_messages_v.print_fatal_error 
	  nam_cod 
          "store"
          (Format.sprintf "for key >%s<@.    already stored value >%s< equal new one"
             (Trail_v.name tra_col)
	     (Doublet_v.name Utilities_v.identity (List_v.name_with_separator Utilities_v.identity "; ") str_str_l_dou ) )
	  (Format.sprintf "this value >%s<"
	     (Doublet_v.name Utilities_v.identity (List_v.name_with_separator Utilities_v.identity "; ") str_old_l ) )
	  (Format.sprintf "check for duplicated entry >%s< in file:@.       >%s<" nam_ent nam_fil)
      end
    else 
      Error_messages_v.print_warning nam_cod 
        "store"
        (Format.sprintf "for key >%s<@.    already stored value >%s<"
           (Trail_v.name tra_col)
	     (Doublet_v.name Utilities_v.identity (List_v.name_with_separator Utilities_v.identity "; ") str_old_l ) )
;;

let is_stored tra_col =
  Register_v.is_stored datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_register tra_col
;;

let datastructure_basename_builder_basename_list_doublet_of_category_name_of_string nam_cat str_rhs =
  let ele_l =
    Invariants_v.has_valid_element_number_of_category_name_of_righthandside 
      nam_cat 
      str_rhs 
  in
  
  let ban_das = Invariants_v.is_valid_of_datastructure_basename (List.hd ele_l) in
  let ban_bui_l = List.tl ele_l in

  Doublet_v.make ban_das ban_bui_l
;;

let build tra_col =
  let nam_fun = "build" in
  let str_rhs =
    try 
      Righthandside_string_by_constructor_leaf_trail_provider_v.provide 
	tra_col
    with 
      Failure "Constructor_leaf_basename_not_found:Righthandside_string_by_constructor_leaf_trail_provider_v.ml:build" ->
      Utilities_v.failwith_of_message_of_code_name_of_function_name
	  "Constructor_leaf_basename_not_found" nam_cod nam_fun
  in

  let nam_cat = Trail_v.value_of_key_off_trail "category" tra_col in
  datastructure_basename_builder_basename_list_doublet_of_category_name_of_string nam_cat str_rhs
;;

let build_n_store tra_col =
  let nam_dat_nam_bui_l = build tra_col in
  store tra_col nam_dat_nam_bui_l;
  nam_dat_nam_bui_l
;;

let provide tra_col =
  if tra_col = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_col were NOT empty" "tra_col IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "entity" tra_col) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide" "entity trail" 
	(Format.sprintf "%s instead" (Trail_v.name tra_col) ) "Check"
    else
      begin

	if not (Tools_agnr_2_v.is_constructor_leaf_basename_of_entity_trail tra_col) (* *** Improve : needs typing *** *)
	then
	  begin
	    let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_col in
	    let tra_cat = Trail_v.trail_of_key_off_trail "category" tra_col in
	    let fin = Tools_agnr_1_v.filename_of_category_trail tra_cat in
	    Error_messages_v.print_fatal_error nam_cod "provide"
	      "entity were a Leaf of the Constructor Tree" 
	      (Format.sprintf ">%s<" nam_ent) 
	      (Format.sprintf "Check file >%s<" (Filename_p.fullname fin) )
	  end
	else
	  begin 
	    if Register_v.is_stored 
		datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_register 
		tra_col
	    then retrieve tra_col
	    else build_n_store tra_col
	  end
      end
;;
