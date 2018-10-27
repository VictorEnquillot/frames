let nam_cod = "Tools_ignr_v.ml";;

let element_of_once_entity_symbol_list sym_ent_l =
  let nam_fun = "element_of_once_entity_symbol_list" in

  if not (List_v.is_once_list_of_list sym_ent_l)
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "Entity_symbol list were a Once list (no duplicated element" 
      "that it was NOT true"
      "Check symbols.dat file" 
  else
    List.hd sym_ent_l
;;

let entity_symbol_constructor_tree_of_entity_tritup tri_ent =
  let sym_dos = Triplet_v.right_off_triplet tri_ent in	
  Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide sym_dos
;;

(** {6 Topson_leaf for Section} *)

let entity_topson_leaf_symbol_list_of_octtup oct_sec =
  let tri_ent = Octuplet_v.right_triplet_off_octuplet oct_sec in
  Entity_topson_leaf_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

let entity_topson_ofstring_symbol_list_of_octtup oct_sec =
  let tri_ent = Octuplet_v.right_triplet_off_octuplet oct_sec in
  Entity_topson_ofstring_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

let entity_topson_bare_symbol_list_of_octtup oct_sec =
  let tri_ent = Octuplet_v.right_triplet_off_octuplet oct_sec in
  Entity_topson_bare_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

(** {6 Topson_notleaf for Section} *)

let entity_topson_notleaf_symbol_list_of_octtup oct_sec =
  let tri_ent = Octuplet_v.right_triplet_off_octuplet oct_sec in
  Entity_topson_notleaf_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

(** {6 Topson for Section} *)

let entity_topson_symbol_by_group_list_of_octtup oct_sec =
  let tri_ent = Octuplet_v.right_triplet_off_octuplet oct_sec in
  Entity_topson_symbol_by_group_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

(** {6 Son_repeated_list for Section} *)

let topson_leaf_symbol_repeated_list_of_octtup_of_group_symbol oct_sst sym_gro =
  let son_lea_l = entity_topson_leaf_symbol_list_of_octtup oct_sst in
  let son_lea_cou = List.length son_lea_l in 

  List_v.repeated_list_of_count_of_element 
    son_lea_cou 
    sym_gro
;;

let topson_ofstring_symbol_repeated_list_of_octtup_of_group_symbol oct_sst sym_gro =
  let son_lea_l = entity_topson_ofstring_symbol_list_of_octtup oct_sst in
  let son_lea_cou = List.length son_lea_l in 

  List_v.repeated_list_of_count_of_element 
    son_lea_cou 
    sym_gro
;;

let topson_bare_symbol_repeated_list_of_octtup_of_group_symbol oct_sst sym_gro =
  let son_lea_l = entity_topson_bare_symbol_list_of_octtup oct_sst in
  let son_lea_cou = List.length son_lea_l in 

  List_v.repeated_list_of_count_of_element 
    son_lea_cou 
    sym_gro
;;

let topson_notleaf_symbol_repeated_list_of_octtup_of_group_symbol oct_sst sym_gro =
  let son_nol_l = entity_topson_notleaf_symbol_list_of_octtup oct_sst in
  let son_nol_cou = List.length son_nol_l in 

  List_v.repeated_list_of_count_of_element 
    son_nol_cou 
    sym_gro
;;

(** {6 Topson_leaf for Group} *)

let entity_topson_leaf_symbol_list_of_nontup non_gro =
  let tri_ent = Nonuplet_v.right_triplet_off_nonuplet non_gro in
  Entity_topson_leaf_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

let entity_topson_bare_symbol_list_of_nontup non_gro =
  let tri_ent = Nonuplet_v.right_triplet_off_nonuplet non_gro in
  Entity_topson_bare_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

let entity_topson_ofstring_symbol_list_of_nontup non_gro =
  let tri_ent = Nonuplet_v.right_triplet_off_nonuplet non_gro in
  Entity_topson_ofstring_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

(** {6 Topson_notleaf for Group} *)

let entity_topson_notleaf_symbol_list_of_nontup non_gro =
  let tri_ent = Nonuplet_v.right_triplet_off_nonuplet non_gro in
  Entity_topson_notleaf_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

(** {6 Topson_list for Group} *)

let entity_topson_symbol_by_group_list_of_nontup non_gro =
  let tri_ent = Nonuplet_v.right_triplet_off_nonuplet non_gro in
  Entity_topson_symbol_by_group_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

(** {6 Son_repeated_list for Group} *)

let topson_bare_symbol_repeated_list_of_nontup_of_camlline_symbol non_ggg sym_cal =
  let son_lea_l = entity_topson_bare_symbol_list_of_nontup non_ggg in
  let son_lea_cou = List.length son_lea_l in 

  List_v.repeated_list_of_count_of_element 
    son_lea_cou 
    sym_cal
;;

let topson_ofstring_symbol_repeated_list_of_nontup_of_camlline_symbol non_ggg sym_cal =
  let son_lea_l = entity_topson_ofstring_symbol_list_of_nontup non_ggg in
  let son_lea_cou = List.length son_lea_l in 

  List_v.repeated_list_of_count_of_element 
    son_lea_cou 
    sym_cal
;;

let topson_notleaf_symbol_repeated_list_of_nontup_of_camlline_symbol non_ggg sym_cal =
  let son_nol_l = entity_topson_notleaf_symbol_list_of_nontup non_ggg in
  let son_nol_cou = List.length son_nol_l in 

  List_v.repeated_list_of_count_of_element 
    son_nol_cou 
    sym_cal
;;


(** {6 Topson_notleaf for Camlline} *)

let entity_topson_notleaf_symbol_list_of_dectup dec_cal =
  let tri_ent = Decuplet_v.right_triplet_off_decuplet dec_cal in
  Entity_topson_notleaf_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

(** {6 Topson_leaf for Camlline} *)

let entity_topson_leaf_symbol_list_of_dectup dec_cal =
  let tri_ent = Decuplet_v.right_triplet_off_decuplet dec_cal in
  Entity_topson_leaf_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

(** {6 Topson_bare for Camlline} *)

let entity_topson_bare_symbol_list_of_dectup dec_cal =
  let tri_ent = Decuplet_v.right_triplet_off_decuplet dec_cal in
  Entity_topson_bare_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

(** {6 Topson_bare for Camlline} *)

let entity_topson_ofstring_symbol_list_of_dectup dec_cal =
  let tri_ent = Decuplet_v.right_triplet_off_decuplet dec_cal in
  Entity_topson_ofstring_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

(** {6 Topson_list for Camlline} *)

let entity_topson_symbol_by_group_list_of_dectup dec_cal =
  let tri_ent = Decuplet_v.right_triplet_off_decuplet dec_cal in
  Entity_topson_symbol_by_group_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

let topson_leaf_camlparagraph_symbol_repeated_list_of_camlparagraph_symbol_of_entity_triplet sym_cap tri_ent =
  let sym_ent_tos_l = 
    Entity_topson_leaf_symbol_list_by_entity_tritup_provider_v.provide
      tri_ent
  in
  let count = List.length sym_ent_tos_l in
  List_v.repeated_list_of_count_of_element count sym_cap
;;

let topson_notleaf_camlparagraph_symbol_repeated_list_of_camlparagraph_symbol_of_entity_triplet sym_cap tri_ent =
  let sym_ent_tos_l = 
    Entity_topson_notleaf_symbol_list_by_entity_tritup_provider_v.provide
      tri_ent
  in
  let count = List.length sym_ent_tos_l in
  List_v.repeated_list_of_count_of_element count sym_cap
;;

(** {6 Grandson_notleaf for Group} *)

let entity_grandson_notleaf_symbol_list_of_nontup non_gro =
  let (sym_ent_top, sym_cat, sym_dos) = Nonuplet_v.right_triplet_off_nonuplet non_gro in
  let tri_ent = (sym_ent_top, sym_cat, sym_dos) in

  Entity_grandson_notleaf_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

(** {6 Grandson_notleaf for Camlline} *)

let entity_grandson_notleaf_symbol_list_of_dectup dec_cal =
  let tri_ent = Decuplet_v.right_triplet_off_decuplet dec_cal in
  Entity_grandson_notleaf_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

(** {6 Grandson_leaf for Camlline} *)

let entity_grandson_leaf_symbol_list_of_dectup dec_cal =
  let tri_ent = Decuplet_v.right_triplet_off_decuplet dec_cal in
  Entity_grandson_leaf_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

(** {6 Grandson_bare for Camlline} *)

let entity_grandson_bare_symbol_list_of_dectup dec_cal =
  let tri_ent = Decuplet_v.right_triplet_off_decuplet dec_cal in
  Entity_grandson_bare_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

(** {6 Grandson_bare for Camlline} *)

let entity_grandson_ofstring_symbol_list_of_dectup dec_cal =
  let tri_ent = Decuplet_v.right_triplet_off_decuplet dec_cal in
  Entity_grandson_ofstring_symbol_list_by_entity_tritup_provider_v.provide 
    tri_ent
;;

let grandson_notleaf_camlparagraph_symbol_repeated_list_of_camlparagraph_symbol_of_entity_triplet sym_cap tri_ent =
  let sym_ent_grl_l = 
    Entity_grandson_notleaf_symbol_list_by_entity_tritup_provider_v.provide
      tri_ent
  in
  let count = List.length sym_ent_grl_l in
  List_v.repeated_list_of_count_of_element count sym_cap
;;

let grandson_leaf_camlparagraph_symbol_repeated_list_of_camlparagraph_symbol_of_entity_triplet sym_cap tri_ent =
  let sym_ent_grl_l = 
    Entity_grandson_leaf_symbol_list_by_entity_tritup_provider_v.provide
      tri_ent
  in
  let count = List.length sym_ent_grl_l in
  List_v.repeated_list_of_count_of_element count sym_cap
;;

let entity_builder_main_symbol_of_entity_proper_tritup tri_enp =
  let nam_fun = "entity_builder_main_symbol_of_entity_proper_tritup" in
  
  let sym_enp_bts_l = 
    Entity_builder_proper_topson_symbol_list_by_entity_proper_tritup_provider_v.provide 
      tri_enp 
  in
  
  let sym_enp_bts =
    if List.length sym_enp_bts_l = 0
    then
      begin 
	let sym_enp = Triplet_v.left_off_triplet tri_enp in
	Error_messages_v.print_warning nam_cod nam_fun
	  (Format.sprintf "Builder Topson list is EMPTY for >%s<" 
	     (Entity_proper_symbol_v.fullname sym_enp));
	Utilities_v.failwith_of_message_of_code_name_of_function_name 
	  "No_builder_topson_notleaf" nam_cod nam_fun
      end
    else
      element_of_once_entity_symbol_list sym_enp_bts_l
  in 
  Entity_symbol_v.entity_symbol_of_entity_proper_symbol sym_enp_bts
;;

let entity_builder_main_symbol_of_entity_tritup tri_ent =
  let nam_fun = "entity_builder_main_symbol_of_entity_tritup" in
  
  let (sym_ent, sym_cat, sym_dos) = tri_ent in
  match sym_ent with
  | Entity_symbol_t.Entity_proper_symbol sym_enp ->
      let tri_enp = (sym_enp, sym_cat, sym_dos) in
      entity_builder_main_symbol_of_entity_proper_tritup tri_enp

  | _ ->
	Error_messages_v.print_fatal_error nam_cod nam_fun
	"Proper Entity Symbol"
	(Format.sprintf ">%s<" (Entity_symbol_v.fullname sym_ent))
	   "Check"
;;

let entity_main_symbol_of_camlline_dectup dec_cal =
  let tri_ent = Decuplet_v.right_triplet_off_decuplet dec_cal in
  Entity_main_symbol_by_entity_tritup_provider_v.provide tri_ent 
;;





let entity_builder_data_symbol_of_entity_proper_tritup tri_enp =
  let nam_fun = "entity_builder_data_symbol_of_entity_proper_tritup" in

  let sym_efb_dat_l = 
    Entity_builder_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide 
      tri_enp 
  in

  let sym_efb_dat =
    if List.length sym_efb_dat_l = 0
    then
      Error_messages_v.print_fatal_error nam_cod nam_fun
	"Entity_symbol list were NOT empty" 
	"it is EMPTY"
	"Check" 
    else
      element_of_once_entity_symbol_list sym_efb_dat_l
  in
  Entity_symbol_v.entity_symbol_of_entity_fictive_basicnullary_symbol sym_efb_dat
;;

let entity_builder_data_symbol_of_entity_tritup tri_ent =
  let nam_fun = "entity_builder_data_symbol_of_entity_tritup" in

  let (sym_ent, sym_cat, sym_dos) = tri_ent in

  match sym_ent with
  | Entity_symbol_t.Entity_proper_symbol sym_enp -> 
      let tri_enp = (sym_enp, sym_cat, sym_dos) in
      entity_builder_data_symbol_of_entity_proper_tritup tri_enp

  | Entity_symbol_t.Entity_fictive_symbol 
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol sym_efn) ->

	Utilities_v.not_yet_implemented nam_cod nam_fun
(*      let tri_efn = (sym_efn, sym_cat, sym_dos) in
      entity_builder_data_symbol_of_entity_fictive_nullary_tritup tri_efn
 *)

  | _ -> 
      Error_messages_v.print_fatal_error nam_cod nam_fun 
	"Entity Symbol were Proper|Fictive_nullary"
	(Format.sprintf " >%s<" (Entity_symbol_v.fullname sym_ent))
	"Check"
;;

let entity_builder_data_symbol_of_camlline_dectup dec_cal =
  let tri_ent = Decuplet_v.right_triplet_off_decuplet dec_cal in
  entity_builder_data_symbol_of_entity_tritup tri_ent
;;

(* main entity in CT *)

(* let entity_symbol_constructor_tree_of_entity_tritup tri_ent = *)
(*   let sym_dos = Triplet_v.right_off_triplet tri_ent in *)
(*   Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide sym_dos  *)
(* ;; *)

(* let is_set_type_of_entity_tritup tri_ent = *)
(*   let (sym_ent, _, sym_dos) = tri_ent in	 *)
(*   let str_ent = Entity_symbol_v.string_off sym_ent in *)
  
(*   let sym_ent_fut = Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide sym_dos in *)
(*   let sym_ent_dos = Tree_v.root_node_off_tree sym_ent_fut in  *)
(*   let str_ent_dos = Entity_symbol_v.string_off sym_ent_dos in *)
  
(*   str_ent = str_ent_dos *)
(* ;; *)

(* let is_main_type_of_entity_tritup tri_ent = *)
(*   let (sym_ent, sym_cat, sym_dos) = tri_ent in *)
(*   entity_main_symbol_of_entity_tritup tri_ent = sym_ent *)
(* ;; *)

(* let is_set_or_main_type_of_entity_tritup tri_ent = *)
(*   (is_set_type_of_entity_tritup tri_ent) *)
(* || *)
(*   (is_main_type_of_entity_tritup tri_ent) *)
(* ;; *)

(* let has_basicnullary_leaf_of_entity_tritup tri_ent = *)
(* (\* leaf stem ... main set *\) *)
(*   let (sym_ent, sym_cat, sym_dos) = tri_ent in	 *)
(*   let sym_ent_ft = entity_symbol_constructor_tree_of_entity_tritup tri_ent in *)

(*   let sym_ent_pat = Tree_v.path_of_node_off_tree sym_ent sym_ent_ft in   *)
(*   let sym_ent_mai = List_v.penultimate_element_off_list sym_ent_pat in *)
(*   let tri_ent_mai = Triplet_v.make sym_ent_mai  sym_cat sym_dos in *)
(*   let sym_ent_mai_sut = Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v.provide tri_ent_mai in *)
(*   let sym_lea_l = Tree_v.leaf_node_list_off_tree sym_ent_mai_sut in *)
(*   List.exists  *)
(*     Entity_symbol_v.is_entity_builder_basic_symbol_off_entity_symbol  *)
(*     sym_lea_l *)
(* ;; *)


