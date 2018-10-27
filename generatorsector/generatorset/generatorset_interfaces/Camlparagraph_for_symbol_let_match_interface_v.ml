(** {3 Camlparagraph_for_symbol_let_match_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Camlparagraph_for_symbol_let_match_interface_v";
   "Needed-by : FGNR:Camlparagraph_for_symbol_let_match_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : It should be read from any External Database";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_clm = 
  match sym_clm with
  | Camlparagraph_for_symbol_let_match_symbol_t.Let_is_onlyson_bare ->

      let sym_se1 = Section_for_symbol_header_son_symbol_v.let_is_topson_bare in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.is_onlyson_bare_off_pattern_for_symbol in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_son_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_match_symbol_t.Let_is_onlyson_notleaf_symbol_off_top_symbol ->

      let sym_se1 = Section_for_symbol_header_son_top_symbol_v.let_is_topson_notleaf_symbol_off_top_symbol_equal_function in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.is_onlyson_notleaf_off_pattern_for_symbol in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_son_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_match_symbol_t.Let_is_onlyson_ofstring ->

      let sym_se1 = Section_for_symbol_header_son_symbol_v.let_is_topson_bare in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.is_onlyson_ofstring_off_pattern_for_symbol in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_son_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_bare ->
    
      let sym_se1 = Section_for_symbol_header_son_symbol_v.let_is_topson_bare in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.is_one_topson_bare_off_pattern_for_symbol in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_son_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol ->
    
      let sym_se1 = Section_for_symbol_header_son_top_symbol_v.let_is_topson_notleaf_symbol_off_top_symbol_equal_function in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.is_one_topson_notleaf_off_pattern_for_symbol in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_son_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_ofstring -> 
    
      let sym_se1 = Section_for_symbol_header_son_symbol_v.let_is_topson_ofstring in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.is_one_topson_ofstring_off_pattern_for_symbol in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_son_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_match_symbol_t.Let_longname_equal_function_for_symbol
  | Camlparagraph_for_symbol_let_match_symbol_t.Let_make_equal_function_for_symbol ->

      Error_messages_v.print_fatal_error nam_cod "make"
	"Camlparagraph_for_symbol_let_match_symbol were defined"
	(Format.sprintf ">%s<" (Camlparagraph_for_symbol_let_match_symbol_v.name sym_clm))
	"Implement"

  | Camlparagraph_for_symbol_let_match_symbol_t.Let_name_equal_function_for_symbol ->

      let sym_se1 = Section_for_symbol_header_constant_symbol_v.let_name_equal_function in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.name_topson_pattern_notleaf_for_symbol in
      let sym_se3 = Section_for_symbol_body_son_top_symbol_v.name_topson_pattern_ofstring_for_symbol in
      let sym_se4 = Section_for_symbol_body_son_top_symbol_v.name_topson_pattern_bare_for_symbol in
      let sym_se5 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se3;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se4;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se5;
     ]
	
  | Camlparagraph_for_symbol_let_match_symbol_t.Let_name_of_topson_bare_equal_function_for_symbol ->
      (* let name_of_topson_bare = function *)
      (* | Geometryset_symbol_t.Vector -> "vector" *)
      (* | _ -> failwith "Not_a_topson_bare:Geometryset_symbol_v.ml:name_of_topson_bare" *)
      (* ;; *)
	 
	 let sym_se1 = Section_for_symbol_header_constant_symbol_v.let_name_of_topson_bare_equal_function in
	 let sym_se2 = Section_for_symbol_body_son_top_symbol_v.name_topson_pattern_bare_for_symbol in
	 let sym_se3 = Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_bare_name in
	 [
	 Section_symbol_v.section_symbol_of_section_for_symbol_header_constant_symbol sym_se1;
	 Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
	 Section_symbol_v.section_symbol_of_section_for_symbol_footer_top_symbol sym_se3;
	 ]
	 
	 | Camlparagraph_for_symbol_let_match_symbol_t.Let_name_of_topson_notleaf_equal_function_for_symbol ->
	 (* let name_of_topson_notleaf = function *)
	 
	 (* | Geometryset_symbol_t.Triangle_symbol sym_tri -> *)
	 (*     Triangle_symbol_v.name sym_tri *)
	 (* | Geometryset_symbol_t.Coordinate_symbol sym_coo -> *)
	 (*     Coordinate_symbol_v.name sym_coo *)
	 
	 (* | _ -> failwith "Not_a_topson_notleaf:Geometryset_symbol_v.ml:name_of_topson_notleaf" *)
	 (* ;; *)

      let sym_se1 = Section_for_symbol_header_constant_symbol_v.let_name_of_topson_notleaf_equal_function in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.name_topson_pattern_notleaf_for_symbol in
      let sym_se3 = Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_name in
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_symbol_footer_top_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_match_symbol_t.Let_name_of_topson_ofstring_equal_function_for_symbol ->
   (* let name_of_topson_ofstring = function *)
   (* | Geometryset_symbol_t.Point _ -> "point" *)
   (* | _ -> failwith "Not_a_topson_ofstring:Geometryset_symbol_v.ml:name_of_topson_ofstring" *)
   (* ;; *)

      let sym_se1 = Section_for_symbol_header_constant_symbol_v.let_name_of_topson_ofstring_equal_function in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.name_topson_pattern_ofstring_for_symbol in
      let sym_se3 = Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_name in
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_symbol_footer_top_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_match_symbol_t.Let_onlyson_notleaf_symbol_off_top_symbol ->
   (* let son_symbol_off_top_symbol = function *)

   (* | Top_symbol_t.Son_symbol sym_son -> sym_son *)
   (* ;; *)

      let sym_se1 = Section_for_symbol_header_son_top_symbol_v.let_topson_notleaf_symbol_off_top_symbol_equal_function in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.onlyson_off_pattern_for_symbol in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_son_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_match_symbol_t.Let_print_function_for_symbol ->

      Error_messages_v.print_fatal_error nam_cod "make"
	"Camlparagraph_for_symbol_let_match_symbol were defined"
	(Format.sprintf ">%s<" (Camlparagraph_for_symbol_let_match_symbol_v.name sym_clm))
	"Implement"

  | Camlparagraph_for_symbol_let_match_symbol_t.Let_string_off_equal_function_for_symbol ->

      let sym_se1 = Section_for_symbol_header_constant_symbol_v.let_string_off_equal_function in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.string_off_topson_pattern_notleaf_for_symbol in
      let sym_se3 = Section_for_symbol_body_son_top_symbol_v.string_off_topson_pattern_ofstring_for_symbol in
      let sym_se4 = Section_for_symbol_body_son_top_symbol_v.string_off_topson_pattern_bare_for_symbol in
      let sym_se5 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se3;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se4;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se5;
     ]

  | Camlparagraph_for_symbol_let_match_symbol_t.Let_string_off_of_topson_bare_equal_function_for_symbol ->
   (* let string_off_of_topson_bare = function *)
   (* | Geometryset_symbol_t.Vector -> "" *)
   (* | _ -> failwith "Not_a_topson_bare:Geometryset_symbol_v.ml:string_off_of_topson_bare" *)
   (* ;; *)

      let sym_se1 = Section_for_symbol_header_constant_symbol_v.let_string_off_of_topson_bare_equal_function in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.string_off_topson_pattern_bare_for_symbol in
      let sym_se3 = Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_bare_string_off in

      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_symbol_footer_top_symbol sym_se3;
     ]
      
  | Camlparagraph_for_symbol_let_match_symbol_t.Let_string_off_of_topson_notleaf_equal_function_for_symbol ->
   (* let string_off_of_topson_notleaf = function *)
   (* | Geometryset_symbol_t.Coordinate_symbol sym_coo -> *)
   (*     Coordinate_symbol_v.string_off sym_coo *)
   (* | _ -> failwith "Not_a_topson_notleaf:Geometryset_symbol_v.ml:string_off_of_topson_notleaf" *)
   (* ;; *)

      let sym_se1 = Section_for_symbol_header_constant_symbol_v.let_string_off_of_topson_notleaf_equal_function in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.string_off_topson_pattern_notleaf_for_symbol in
      let sym_se3 = Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_string_off in
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_symbol_footer_top_symbol sym_se3;
     ]

  | Camlparagraph_for_symbol_let_match_symbol_t.Let_string_off_of_topson_ofstring_equal_function_for_symbol ->
   (* let string_off_of_topson_ofstring = function *)
   (* | Geometryset_symbol_t.Point s -> s *)
   (* | _ -> failwith "Not_a_topson_ofstring:Geometryset_symbol_v.ml:string_off_of_topson_ofstring" *)
   (* ;; *)

      let sym_se1 = Section_for_symbol_header_constant_symbol_v.let_string_off_of_topson_ofstring_equal_function in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.string_off_topson_pattern_ofstring_for_symbol in
      let sym_se3 = Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_string_off in
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_constant_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_symbol_footer_top_symbol sym_se3;
     ]


  | Camlparagraph_for_symbol_let_match_symbol_t.Let_topson_notleaf_symbol_off_top_symbol ->

      let sym_se1 = Section_for_symbol_header_son_top_symbol_v.let_topson_notleaf_symbol_off_top_symbol_equal_function in
      let sym_se2 = Section_for_symbol_body_son_top_symbol_v.one_topson_off_pattern_for_symbol in
      let sym_se3 = Section_for_any_footer_symbol_v.double_semicolon in

      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_son_top_symbol sym_se1;
       Section_symbol_v.section_symbol_of_section_for_symbol_body_son_top_symbol sym_se2;
       Section_symbol_v.section_symbol_of_section_for_any_footer_symbol sym_se3;
     ]
;;
