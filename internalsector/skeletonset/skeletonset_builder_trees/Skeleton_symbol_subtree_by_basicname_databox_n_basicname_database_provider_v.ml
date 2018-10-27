(** {3 Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BSKE:Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BSKE:Skeleton_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v";
   "Needs: BSKE:Nwchem_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Skeleton_symbol Rooted by Skeleton_context_databox_symbol";
   "What-is-it : a Skeleton_context_databox son is a Skeleton_set_body";
   "What-is-it : Skeleton_set_body sons are Skeleton_set_body_fence_point";
   "How-is-it-done : by defining the Skeleton Symbol Tree node with information from Databaseset (Nwchem)";
   "How-is-it-done : by mapping Nwchem_symbol_string_off and Skeleton_symbol_string_off";
   "How-is-it-done : by getting Nwchem_tag from its String_off and Symbol";
   "How-is-it-done : by getting Nwchem_tag_son list from Nwchem_tag";
   "How-is-it-done : by translating Skeleton_symbols from equivalent Nwchem_symbols";
   "How-is-it-done : using String_off to get Nwchem Tag and build Skeleton_symbol";
   "Remark : No storage. Only Tags are stored";
   "Improve : skip ECP if No ECP in databox";
   "Abbreviation : sbo  = skeleton_context_databox";
   "Abbreviation : nwc  = nwchem";
   "Abbreviation : ele  = elementary";
   "Abbreviation : ske  = skeleton";
   "Abbreviation : ept  = elementary_body_parameter_tuple";
   "Abbreviation : ebp  = elementary_border_parameter";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : yt   = ytree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stl  = subtree list";
   "Abbreviation : stll = subtree list list";
   "Author : François Colonna 22nd March 2016 Point and other Skeleton Trees are separarted"; 
   "Author : François Colonna 12h April 2016 corrected onecenter (twice) -> anycenter";
   "Author : François Colonna 11 octobre 2016 at 11:14:53+02:00 from DSKE";
   "Improve : get rid of tag use only symbols";
 ]
 ;;

(* Skeleton_Builder_Tree_Scheme                               *)
(*         |-           Skeleton_context_sector   -|          *)
(*         |                    / | \              | fixed    *)
(*         |-           Skeleton_context_domain   -| duo      *)
(* Context |                    / | \              |          *)
(* Quatuor |-           Skeleton_context_database -|          *)
(*         |                    / | \              | variable *)
(*         |-           Skeleton_context_databox  -| duo      *)
(*         |                      |                           *)
(*                                |                           *)
(*                          Skeleton_set_body                                   *)
(*      Skeleton_set_body_aopefset_anycenter ( | ..._ecppefset_anycenter)       *)
(*             "NWC"                                                            *)
(*         /                     |                \                             *)
(*    Skeleton_set_body_aopefset_onecenter Skeleton_set_body_aopefset_onecenter *)
(*                     "H"                             "He"  .                  *)
(*                                                                              *)
(*    Skeleton_set_fence_aopefset          Skeleton_set_fence_aopefset ...      *)
(*       "H S 1 1 "      ...               "He S 1 1" ...                       *)

(* Main recursion *)

let skeleton_symbol_subtree_nwchemdata_of_tag_nwchemdata_all_list_of_skeleton_as_context_databox_symbol tag_nwc_l sym_ske_sbo =
  let nam_fun = "skeleton_symbol_subtree_nwchemdata_of_tag_nwchemdata_all_list_of_skeleton_as_context_databox_symbol" in
  let nam_mod = Management_v.current_module_name (documentation ()) in

    Management_v.debug_what_string "input sym_ske_sbo" nam_mod nam_fun (Skeleton_symbol_v.fullname sym_ske_sbo); 

  let rec apply cur_sym_ske =

    Management_v.debug_what_string "cur_sym_ske" nam_mod nam_fun (Skeleton_symbol_v.fullname cur_sym_ske); 
    
    match cur_sym_ske with
    | s when Skeleton_symbol_v.is_skeleton_context_databox_constructor s ->

	let sym_ske_tso_l = 
	  Skeleton_symbol_from_nwchemdata_tag_translations_v.son_skeleton_symbol_list_of_skeleton_as_context_databox_symbol 
	    cur_sym_ske 
	in
	Tree_v.make_of_node cur_sym_ske (List.map apply sym_ske_tso_l)

    | s when Skeleton_symbol_v.is_skeleton_set_body_centered_aopefset_anycenter_constructor s ->

	let sym_ske_tso_l = 
	  Skeleton_symbol_from_nwchemdata_tag_translations_v.skeleton_as_center_symbol_list_of_tag_nwchemdata_all_list tag_nwc_l
	in
	Tree_v.make_of_node cur_sym_ske (List.map apply sym_ske_tso_l)

    | s when Skeleton_symbol_v.is_skeleton_set_body_centered_aopefset_onecenter_constructor s ->

	let sym_ske_tso_l = 
	  Skeleton_symbol_from_nwchemdata_tag_translations_v.skeleton_as_shell_symmetry_symbol_list_of_skeleton_as_center_symbol_of_tag_nwchemdata_all_list
	    cur_sym_ske 
	    tag_nwc_l
	in
	Tree_v.make_of_node cur_sym_ske (List.map apply sym_ske_tso_l)

    | s when Skeleton_symbol_v.is_skeleton_set_body_centered_aopefset_shellsymmetry_constructor s ->
	
	let sym_ske_tso_l =
	  Skeleton_symbol_from_nwchemdata_tag_translations_v.skeleton_as_shell_ordinal_symbol_list_of_skeleton_as_one_shell_symmetry_symbol_of_tag_nwchemdata_all_list 
	    cur_sym_ske 
	    tag_nwc_l
	in
	Tree_v.make_of_node cur_sym_ske (List.map apply sym_ske_tso_l)

    | s when Skeleton_symbol_v.is_skeleton_set_body_centered_aopefset_shellordinal_constructor s -> 

	let sym_ske_tso_l =
	  Skeleton_symbol_from_nwchemdata_tag_translations_v.skeleton_as_aopef_symbol_list_of_skeleton_as_one_shell_ordinal_symbol_of_tag_nwchemdata_all_list
	    cur_sym_ske 
	    tag_nwc_l
	in
	Tree_v.make_of_node cur_sym_ske (List.map apply sym_ske_tso_l)

    | s when Skeleton_symbol_v.is_skeleton_set_fence_centered_aopef_constructor s ->
	Tree_v.make_of_leaf cur_sym_ske

    | s when Skeleton_symbol_v.is_skeleton_set_fence_centered_ecppef_constructor s ->
	Tree_v.make_of_leaf cur_sym_ske

    | s when Skeleton_symbol_v.is_skeleton_set_body_centered_ecppefset_constructor s ->
	Tree_v.make_of_leaf cur_sym_ske

	(* Improve to be implemented as a subtree *)

    | _ ->
	begin
	  let str_l =
	    [
	     "Skeleton_set_body_centered_aopefset_onecenter_constructor";
	     "Skeleton_set_body_centered_aopefset_shellordinal_constructor"; 
	     "Skeleton_set_body_centered_aopefset_shellsymmetry_constructor";
	     "Skeleton_set_body_centered_aopefset_onecenter_constructor";
	     "Skeleton_set_body_centered_ecppefset_constructor";
	     "Skeleton_context_databox_constructor";
	     "Skeleton_set_fence_centered_aopef_constructor";
	     "Skeleton_set_fence_centered_ecppef_constructor";
	   ]
	  in
	  Error_messages_v.print_fatal_error __LOC__ nam_fun 
	    (Format.sprintf "Skeleton Symbol >%s< were defined in pattern" 
	       (Skeleton_symbol_v.name cur_sym_ske)
	    )
	    (Format.sprintf "Skeleton Symbol already defined in pattern :@.   %s"
	       (List_v.name_in_column (fun s->s) str_l)
	    )
	    "Add it"
	end
  in
  
  apply sym_ske_sbo
    
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dbo, bna_dba) =
  let tag_ske_sbo = 
    Skeleton_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba) 
  in
  let (sym_ske_sbo, soi_ske_sbo) = tag_ske_sbo in

  let tag_nwc_l = 
    Skeleton_symbol_from_nwchemdata_tag_translations_v.tag_nwchemdata_all_list_of_basicname_databox 
      bna_dbo 
  in

  skeleton_symbol_subtree_nwchemdata_of_tag_nwchemdata_all_list_of_skeleton_as_context_databox_symbol
    tag_nwc_l
    sym_ske_sbo
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v.ml force on mardi 11 octobre 2016, 15:02:12 (UTC+0200) *)
