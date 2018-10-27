(** {6 Section_for_symbol_body_son_top_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_symbol_body_son_top_interface_v";
   "Needed-by : FGNR:Section_for_symbol_body_son_top_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Remark : It is a Repeated list of the same Builder";
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_sst =
  let sym_sst = Octuplet_v.left_off_octuplet oct_sst in
  match sym_sst with
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_bare_off_pattern_for_symbol ->
  (* | Geometryset_symbol_t.Vector -> true *)

      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.pipe_is_onlyson_bare_symbol_off_top_symbol in
	
	[
	 Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol sym_gr1;
       ]
	  
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_ofstring_off_pattern_for_symbol ->
  (* | Geometryset_symbol_t.Point _ -> true *)

      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.pipe_is_onlyson_ofstring_symbol_off_top_symbol in
	
	[
	 Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol sym_gr1;
       ]
	  
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_notleaf_off_pattern_for_symbol ->
  (* | Geometryset_symbol_t.Triangle_symbol _ -> true *)

      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.pipe_is_onlyson_notleaf_symbol_off_top_symbol in
	
	[
	 Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol sym_gr1;
       ]
	  

  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_bare_off_pattern_for_symbol ->
  (* | Geometryset_symbol_t.Vector -> true *)
  (* | _ -> false *)

      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.pipe_is_topson_bare_symbol_off_top_symbol in
	
	[
	 Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol sym_gr1;
       ]
	  
  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_ofstring_off_pattern_for_symbol ->
  (* | Geometryset_symbol_t.Point _ -> true *)
  (* | _ -> false *)

      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.pipe_is_topson_ofstring_symbol_off_top_symbol in
	
	[
	 Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol sym_gr1;
       ]
	  
  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_notleaf_off_pattern_for_symbol ->
  (* | Geometryset_symbol_t.Triangle_symbol _ -> true *)
  (* | _ -> false *)

      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.pipe_is_topson_notleaf_symbol_off_top_symbol in
	
	[
	 Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol sym_gr1;
       ]
	  
  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_bare_for_symbol ->

      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.pipe_upgrade_name_bare_function in
      let sym_gr1_l = 
	 Tools_ignr_v.topson_bare_symbol_repeated_list_of_octtup_of_group_symbol 
           oct_sst
	   sym_gr1
       in
       List.map
	   Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol
	   sym_gr1_l

  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_notleaf_for_symbol ->

      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.pipe_upgrade_name_notleaf_function in
      let sym_gr1_l = 
	Tools_ignr_v.topson_notleaf_symbol_repeated_list_of_octtup_of_group_symbol 
	  oct_sst 
	  sym_gr1
       in
       List.map
	   Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol
	   sym_gr1_l
 
  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_ofstring_for_symbol ->

      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.pipe_upgrade_name_ofstring_function in
      let sym_gr1_l = 
	Tools_ignr_v.topson_ofstring_symbol_repeated_list_of_octtup_of_group_symbol 
          oct_sst
	  sym_gr1
      in 
      List.map
	  Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol
	  sym_gr1_l

  | Section_for_symbol_body_son_top_symbol_t.One_topson_off_pattern_for_symbol ->
  (* | Geometryset_symbol_t.Triangle_symbol sym_tri -> sym_tri *)
  (* | sym_geo -> Error_messages_v.print_fatal_error *)
  (*     nam_cod "triangle_symbol_off_geometryset_symbol" *)
  (*     "Triangle_symbol" *)
  (*     (name sym_geo) "check" *)

      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.pipe_topson_notleaf_symbol_off_top_symbol in
	
	[
	 Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol sym_gr1;
       ]
	  

  | Section_for_symbol_body_son_top_symbol_t.Onlyson_off_pattern_for_symbol ->
  (* | Geometryset_symbol_t.Triangle_symbol sym_tri -> sym_tri *)

      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.pipe_onlyson_notleaf_symbol_off_top_symbol in
	
	[
	 Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol sym_gr1;
       ]
	  
  | Section_for_symbol_body_son_top_symbol_t.Upgrade_topson_symbol ->
      (* "  Geometryset_symbol_t.Triangle_symbol sym_tri"; *)
      
      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.upgrade_topson_symbol in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol sym_gr1;
     ]
	
  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_bare_for_symbol ->

      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.pipe_upgrade_string_off_bare_function in
      let sym_gr1_l = 
	 Tools_ignr_v.topson_bare_symbol_repeated_list_of_octtup_of_group_symbol 
           oct_sst
	   sym_gr1
       in
       List.map
	   Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol
	   sym_gr1_l

  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_notleaf_for_symbol ->

      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.pipe_upgrade_string_off_notleaf_function in
      let sym_gr1_l = 
	Tools_ignr_v.topson_notleaf_symbol_repeated_list_of_octtup_of_group_symbol 
	  oct_sst 
	  sym_gr1
       in
       List.map
	   Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol
	   sym_gr1_l
 
  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_ofstring_for_symbol ->

      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.pipe_upgrade_string_off_ofstring_function in
      let sym_gr1_l = 
	Tools_ignr_v.topson_ofstring_symbol_repeated_list_of_octtup_of_group_symbol 
          oct_sst
	  sym_gr1
      in 
      List.map
	  Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol
	  sym_gr1_l

  | Section_for_symbol_body_son_top_symbol_t.Try_make_of_topson_with_failure_arrow ->

      let sym_gr1 = Group_for_symbol_body_top_symbol_v.try_make_of_topson_bare_with_failure_arrow in
      let sym_gr2 = Group_for_symbol_body_top_symbol_v.try_make_of_topson_ofstring_with_failure_arrow in
      let sym_gr3 = Group_for_symbol_body_top_symbol_v.try_make_of_topson_notleaf_with_failure_arrow in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_body_top_symbol sym_gr1;
       Group_symbol_v.group_symbol_of_group_for_symbol_body_top_symbol sym_gr2;
       Group_symbol_v.group_symbol_of_group_for_symbol_body_top_symbol sym_gr3;
     ]
	
  | Section_for_symbol_body_son_top_symbol_t.Try_name_of_topson_with_failure_arrow ->

      let sym_gr1 = Group_for_symbol_body_top_symbol_v.try_name_of_topson_bare_with_failure_arrow in
      let sym_gr2 = Group_for_symbol_body_top_symbol_v.try_name_of_topson_ofstring_with_failure_arrow in
      let sym_gr3 = Group_for_symbol_body_top_symbol_v.try_name_of_topson_notleaf_with_failure_arrow in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_body_top_symbol sym_gr1;
       Group_symbol_v.group_symbol_of_group_for_symbol_body_top_symbol sym_gr2;
       Group_symbol_v.group_symbol_of_group_for_symbol_body_top_symbol sym_gr3;
     ]
	
  | Section_for_symbol_body_son_top_symbol_t.Try_top_of_topson_with_failure_arrow ->
 
      let sym_gr1 = Group_for_symbol_body_son_top_symbol_v.try_top_of_topson_with_failure_arrow in
      let sym_gro = Group_symbol_v.group_symbol_of_group_for_symbol_body_son_top_symbol sym_gr1 in

      Tools_ignr_v.topson_notleaf_symbol_repeated_list_of_octtup_of_group_symbol 
	oct_sst 
	sym_gro

  | Section_for_symbol_body_son_top_symbol_t.Try_string_off_of_topson_with_failure_arrow ->

      let sym_gr1 = Group_for_symbol_body_top_symbol_v.try_string_off_of_topson_bare_with_failure_arrow in
      let sym_gr2 = Group_for_symbol_body_top_symbol_v.try_string_off_of_topson_ofstring_with_failure_arrow in
      let sym_gr3 = Group_for_symbol_body_top_symbol_v.try_string_off_of_topson_notleaf_with_failure_arrow in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_body_top_symbol sym_gr1;
       Group_symbol_v.group_symbol_of_group_for_symbol_body_top_symbol sym_gr2;
       Group_symbol_v.group_symbol_of_group_for_symbol_body_top_symbol sym_gr3;
     ]
	
;;


