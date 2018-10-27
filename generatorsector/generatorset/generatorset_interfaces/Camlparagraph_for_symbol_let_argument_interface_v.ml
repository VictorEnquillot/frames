(** {3 Camlparagraph_for_symbol_let_argument_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Camlparagraph_for_symbol_let_argument_interface_v";
   "Needed-by : FGNR:Camlparagraph_for_symbol_let_argument_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : It should be read from any External Database";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cla =
  match sym_cla with
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_documentation_for_symbol ->

      let sym_se1 = Section_for_any_header_constant_symbol_v.let_documentation in
      let sym_se2 = Section_for_symbol_body_top_symbol_v.documentation_list_for_symbol in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in
	
      [
       Section_symbol_v.section_symbol_of_section_for_any_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_es_symbol_off_et_symbol_datastructure_argument ->
      Utilities_v.not_yet_implemented nam_cod "let_es_symbol_off_et_symbol_datastructure_argument"

  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_fullname_argument_for_symbol ->

      let sym_se1 = Section_for_any_header_top_symbol_v.let_fullname_argument_equal in
      let sym_se2 = Section_for_any_body_top_symbol_v.sprintf_for_any_fullname in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in
	
      [
       Section_symbol_v.section_symbol_of_section_for_any_header_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_any_body_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_longname_argument_for_symbol ->

      let sym_se1 = Section_for_any_header_top_symbol_v.let_longname_argument_equal in
      let sym_se2 = Section_for_any_body_top_symbol_v.sprintf_for_any_longname in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in
	
      [
       Section_symbol_v.section_symbol_of_section_for_any_header_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_any_body_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol ->

      let sym_se1 = Section_for_symbol_header_current_top_symbol_v.let_grandson_notleaf_symbol_off_top_symbol_argument_equal in
      let sym_se2 = Section_for_symbol_body_current_son_top_symbol_v.grandson_symbol_off_topson_notleaf_symbol_off_top_symbol in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in
	
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_current_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_current_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_notleaf_symbol_off_top_symbol ->
      let sym_se1 = Section_for_symbol_header_current_top_symbol_v.let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal in
      let sym_se2 = Section_for_symbol_body_current_son_top_symbol_v.if_not_is_topson_begin_notleaf_end in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in
	
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_current_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_current_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_ofstring ->

      let sym_se1 = Section_for_symbol_header_current_top_symbol_v.let_is_grandson_ofstring in
      let sym_se2 = Section_for_symbol_body_current_son_top_symbol_v.if_not_is_topson_begin_ofstring_end in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in
	
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_current_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_current_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_bare ->

      let sym_se1 = Section_for_symbol_header_current_top_symbol_v.let_is_grandson_bare in
      let sym_se2 = Section_for_symbol_body_current_son_top_symbol_v.if_not_is_topson_begin_bare_end in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in
	
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_current_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_current_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol ->
   (* let make nam s = *)

      let sym_se1 = Section_for_symbol_header_constant_symbol_v.let_make_nam_s_equal in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.try_make_of_topson_with_failure_arrow in
      let sym_se3 = Section_for_symbol_footer_top_symbol_v.let_underscore_print_error_failwith_make in
      
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_symbol_footer_top_symbol sym_se3;
     ]
	
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_bare_nam_equal_for_symbol ->
   (* let make_of_topson_bare nam = *)

      let sym_se1 = Section_for_symbol_header_constant_symbol_v.let_make_of_topson_bare_nam_equal in
      let sym_se2 = Section_for_symbol_body_son_bare_symbol_v.make_ecstring_pattern_bare_for_symbol in
      let sym_se3 = Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_bare_make in

      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_bare_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_symbol_footer_top_symbol sym_se3;
     ]
      
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_ofstring_nam_s_equal_for_symbol ->
   (* let make_of_topson_ofstring nam s = *)

      let sym_se1 = Section_for_symbol_header_constant_symbol_v.let_make_of_topson_ofstring_nam_s_equal in
      let sym_se2 = Section_for_symbol_body_son_ofstring_symbol_v.make_ecstring_pattern_ofstring_for_symbol in
      let sym_se3 = Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_make in

      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_ofstring_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_symbol_footer_top_symbol sym_se3;
     ]
      
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_notleaf_nam_s_equal_for_symbol -> 
(*  let make_of_topson_notleaf nam s = *)

(*   try geometryset_symbol_of_coordinate_symbol *)
(*       (Coordinate_symbol_v.make nam s) *)
(*   with Failure "Not_Coordinate_symbol:Coordinate_symbol_v:make" -> *)
(*   try geometryset_symbol_of_triangle_symbol *)
(*       (Triangle_symbol_v.make nam s) *)
(*   with Failure "Not_Triangle_symbol:Triangle_symbol_v:make" -> *)

(*   failwith "Not_a_topson_notleaf:Geometryset_symbol_v.ml:make_of_topson_notleaf" *)
(* ;; *)

      let sym_se1 = Section_for_symbol_header_constant_symbol_v.let_make_of_topson_notleaf_nam_s_equal in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.try_top_of_topson_with_failure_arrow in
      let sym_se3 = Section_for_symbol_footer_top_symbol_v.failwith_not_a_topson_notleaf in
	
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_symbol_footer_top_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_argument_for_symbol ->

      Utilities_v.not_yet_implemented nam_cod "let_make_argument_for_symbol"

  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_name_argument_for_symbol ->
(*  let name sym_geo = *)

(*   try name_of_topson_bare sym_geo *)
(*   with Failure "Not_a_topson_bare:Geometryset_symbol_v.ml:name_of_topson_bare" -> *)
(*   try name_of_topson_ofstring sym_geo *)
(*   with Failure "Not_a_topson_ofstring:Geometryset_symbol_v.ml:name_of_topson_ofstring" -> *)
(*   try name_of_topson_notleaf sym_geo *)
(*   with Failure "Not_a_topson_notleaf:Geometryset_symbol_v.ml:name_of_topson_notleaf" -> *)
(*   failwith "Not_a_valid_geometryset_symbol:Geometryset_symbol_v.ml:name" *)
(* ;; *)

      let sym_se1 = Section_for_any_header_top_symbol_v.let_name_argument_equal in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.try_name_of_topson_with_failure_arrow in
      let sym_se3 = Section_for_symbol_footer_top_symbol_v.let_underscore_print_error_failwith_name in
	
      [
       Section_symbol_v.section_symbol_of_section_for_any_header_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_symbol_footer_top_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol ->
   (* "let geometryset_symbol_of_triangle_symbol sym_tri ="; *)
   (* "  Geometryset_symbol_t.Triangle_symbol sym_tri"; *)
   (* ";;"; *)
      let sym_se1 = Section_for_symbol_header_son_top_symbol_v.let_top_symbol_of_topson_notleaf_symbol_argument_equal in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.upgrade_topson_symbol in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in
	
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_son_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol ->
   (* "let geometryset_symbol_of_triangle_isoceles_symbol sym_tis ="; *)
   (* "  let sym_tri = Triangle_symbol_v.triangle_symbol_of_triangle_isoceles_symbol sym_tis in"; *)
   (* "    geometryset_symbol_of_triangle_symbol sym_tri"; *)
   (* ";;"; *)
      let sym_se1 = Section_for_symbol_header_current_top_symbol_v.let_top_symbol_of_grandson_notleaf_symbol_argument_equal in
      let sym_se2 = Section_for_symbol_body_current_son_top_symbol_v.upgrade_grandson_symbol in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in
	
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_current_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_current_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_string_off_argument_for_symbol ->

(*  let string_off sym_geo = *)

(*   try string_off_of_topson_ofstring sym_geo *)
(*   with Failure "Not_a_topson_ofstring:Geometryset_symbol_v.ml:string_off_of_topson_ofstring" -> *)
(*   try string_off_of_topson_notleaf sym_geo *)
(*   with Failure "Not_a_topson_notleaf:Geometryset_symbol_v.ml:string_off_of_topson_notleaf" -> *)
(*   failwith "Not_a_valid_geometryset_symbol:Geometryset_symbol_v.ml:string_off" *)
(* ;; *)

      let sym_se1 = Section_for_any_header_top_symbol_v.let_string_off_argument_equal in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.try_string_off_of_topson_with_failure_arrow in
      let sym_se3 = Section_for_symbol_footer_top_symbol_v.let_underscore_print_error_failwith_string_off in
	
      [
       Section_symbol_v.section_symbol_of_section_for_any_header_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_symbol_footer_top_symbol sym_se3;
     ]
;;

