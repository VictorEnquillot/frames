(** {3 Camlline_uno_function_value_v}  *)

let nam_cod = "Camlline_uno_function_value_v.ml";;

(** {6 Aliases} *)

open Tools_vgnr_v;;

(** {6 Making.} *)

let make sym_cuf soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_uno_function_symbol sym_cuf 	
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.retrieve tag_cal in
  let sym_ent_l = List.map Tag_v.symbol_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in

  match sym_cuf with
(* Tag *)
  | Camlline_uno_function_any_symbol_t.Comment_s_comment ->             
   (* Point_3d *) 
      Format.sprintf "(* %s *)"
      (entity_name_capitalized sym_ent)

  | Camlline_uno_function_tag_symbol_t.Let_name_tag_at_equal ->            
   (* let name tag_ato = *)

      Format.sprintf "let name tag_%s ="
      (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Let_name_for_at_equal ->                 
   (* Ex.: let name for_tie = *)

      Format.sprintf "let name for_%s ="
      (abbreviation_argument sym_ent)
	
  | Camlline_uno_function_symbol_t.Let_make_sym_at_soi_at_equal ->
    (* Ex.: let make sym_mol soi_mol = *)
      Format.sprintf "let make sym_%s soi_%s ="
      (abbreviation_argument sym_ent)
      (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Space_Tag_vdot_make_sym_at_soi_at -> 
    (* Ex.: Tag_v.make sym_mol soi_mol *)
      Format.sprintf "  Tag_v.make sym_%s soi_%s"
      (abbreviation_argument sym_ent)
      (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Space_double_quote_Current ->
      let sym_cof = 
	Camlline_tag_v.contentfile_symbol_off_camlline_tag 
	  tag_cal 
      in
      Format.sprintf "  \"Current : CDOS:%s\";"
(*	(abbreviation_domainset sym_dos)
	(uppercase_initial_category sym_cat) *)
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)  

  | Camlline_uno_function_symbol_t.Pipe_datastructure_ac_as_arrow -> 
      Format.sprintf "  | %s %s ->"
	(entity_name sym_ent)  
	(abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Pipe_Et_symbol_tdot_Et_symbol_arrow_string ->
      (* Ex.: | Vector_symbol_t.Vector -> "vector" *)
      let sym_cof = Contentfile_symbol_v.type_alone in
      Format.sprintf "  | %s.%s -> \"%s\""
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)  
	(entity_name_capitalized sym_ent)  
	(entity_name sym_ent)  

(* making *)
 | Camlline_uno_function_symbol_t.Pipe_string_arrow_ec ->
     (* Ex.: | str -> Atom_symbol_v.o_c *)
     Format.sprintf "  | str -> %s" 
       (entity_name sym_ent) 
       
 | Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec ->
     (* Ex.: | "o_c" -> o_c *)
     Format.sprintf "  | \"%s\" -> %s" 
       (entity_name sym_ent) 
       (entity_name sym_ent) 
       
 | Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec_space_sarg ->
     (* Ex.: | "Cluster_fromid" -> cluster_fromid s *)
     Format.sprintf "  | \"%s\" -> %s s" 
       (entity_name_capitalized sym_ent) 
       (entity_name sym_ent) 
       
 | Camlline_uno_function_symbol_t.Lpar_Es_symbol_vdot_make_of_string_of_string_rpar ->
     (* Ex.: (Entity_fictive_symbol_v.make nam s) *)
     let sym_cof = Contentfile_symbol_v.value_alone in
     Format.sprintf "      (%s.make nam s)"
       (module_name_capitalized_suffixed sym_cat sym_ent sym_cof)  
       
 | Camlline_uno_function_symbol_t.Failwith_not_Es_symbol ->
     (* Ex.: failwith "Not_Entity_fictive_symbol:entity_fictive_symbol_v.ml:make" *)
      let sym_cof = Contentfile_symbol_v.value_alone in
     Format.sprintf "    failwith \"Not_%s:%s:make\"" 
       (module_name_capitalized sym_cat sym_ent)  
       (module_name_capitalized_suffixed sym_cat sym_ent sym_cof)  

 | Camlline_uno_function_symbol_t.With_failure_not_Es_symbol_arrow ->
     (* Ex.: with Failure "Not_Entity_fictive_symbol:entity_fictive_symbol_v.ml:make" -> *)
      let sym_cof = Contentfile_symbol_v.value_alone in
     Format.sprintf "  with Failure \"Not_%s:%s:make\" ->" 
       (module_name_capitalized sym_cat sym_ent)  
       (module_name_capitalized_suffixed sym_cat sym_ent sym_cof)  

 | Camlline_uno_function_symbol_t.Print_fatal_error_make_of_string_of_string ->
     (* Ex.: 
       Error_messages_v.print_fatal_error nam_cod "make"
          (Format.sprintf "strings %s %s represent an existing Entity_symbol subtype" nam s)
          "it does not exists" "Check" 
       *)
     Format.sprintf 
       "    Error_messages_v.print_fatal_error nam_cod \"make\"@.      (Format.sprintf \"strings \\\"%%s\\\" and \\\"%%s\\\" represent an existing %s subtype\" nam s)@.      \"it does not exists\"@.      \"Check file %s_v.ml\" " 
       (entity_name_capitalized sym_ent)  
       (module_name sym_cat sym_ent)  
       
(* upgrading a Topentity self *) 
  | Camlline_uno_function_symbol_t.Let_et_symbol_equal_Et_symbol_tdot_Et ->
      (* Ex.: let vector = Vector_symbol_t.Vector *)
      let sym_cof = Contentfile_symbol_v.type_alone in
      Format.sprintf "let %s = %s.%s"
	(entity_name sym_ent)  
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)  
	(entity_name_capitalized sym_ent)  

  | Camlline_uno_function_symbol_t.Es_any_vdot_make_ac_as -> 
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "      %s.make %s"
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_uno_function_symbol_t.Es_any_vdot_name_ac_as -> 
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "      %s.name %s"
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_uno_function_symbol_t.Es_any_vdot_longname_ac_as -> 
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "      %s.longname %s"
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_uno_function_symbol_t.Es_any_vdot_string_off_ac_as -> 
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "      %s.string_off %s"
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_uno_function_symbol_t.Es_any_vdot_print_ppf_ac_as ->  
      Utilities_v.not_yet_implemented nam_cod "as_pppf_as" 

  | Camlline_uno_function_symbol_t.Title_category ->  
      Format.sprintf "(** {3 The %s for a %s.}  *)"
	(category_name_capitalized sym_cat)
	(module_name_capitalized sym_cat sym_ent)

  | Camlline_uno_function_symbol_t.Title_functionalities ->  
      Format.sprintf "(** {3 The functionalities for a %s for a %s.}  *)"
	(category_name_capitalized sym_cat)
	(module_name_capitalized sym_cat sym_ent)

  | Camlline_uno_function_symbol_t.Left_off_doublet -> 
      Format.sprintf "  Doublet_v.left_off_doublet %s"
	(abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Right_off_doublet ->  
      Format.sprintf "  Doublet_v.right_off_doublet %s"
	(abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Left_off_triplet ->  
      Format.sprintf "  Triplet_v.left_off_triplet %s"
	(abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Middle_off_triplet ->
      Format.sprintf "  Triplet_v.middle_off_triplet %s"
	(abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Right_off_triplet -> 
      Format.sprintf "  Triplet_v.right_off_triplet %s"
	(abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Format_sprintf_longname_ac_as_string_off_ac_as ->
      let str ="Format.sprintf %s \"%s\"" in
      Format.sprintf " %s (longname %s) (string_off %s)" 
	str 
	(abbreviation_argument sym_ent)
	(abbreviation_argument sym_ent)

 | Camlline_uno_function_symbol_t.Let_fullname_ac_as_equal ->
     Format.sprintf "let fullname %s ="
       (abbreviation_argument sym_ent)

 | Camlline_uno_function_symbol_t.Space_Tag_vdot_name_Et_symbol_vdot_name_tag_at ->
 (* Ex.:   Tag_v.name Atom_symbol_v.name tag_ato *) 
      let sym_cof = 
	Camlline_tag_v.contentfile_symbol_off_camlline_tag 
	  tag_cal 
      in
      Format.sprintf "  Tag_v.name %s.name %s"
	(module_name_capitalized_suffixed Category_symbol_t.Symbol sym_ent sym_cof)  
	(abbreviation_categorized_argument sym_cat sym_ent)

(* Formula *)
  | Camlline_uno_function_symbol_t.Let_make_soi_at_equal_function ->
   (* Ex.: let make soi_ato = function *)

      Format.sprintf "let make soi_%s = function"
	(abbreviation_argument sym_ent)

 | Camlline_uno_function_symbol_t.Let_make_tag_at_equal ->
      (* Ex.: let make tag_hf1 = *)

      Format.sprintf "let make tag_%s ="
	(abbreviation_argument sym_ent)
	
  | Camlline_uno_function_symbol_t.Space_let_sym_at_equal_Tag_vdot_symbol_off_tag_space_tag_at_space_in ->
    (* Ex.: let sym_hf1 = Tag_v.symbol_off_tag tag_hf1 in *)
      Format.sprintf "let sym_%s = Tag_v.symbol_off_tag tag_%s"
	(abbreviation_argument sym_ent)
	(abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Space_let_soi_at_equal_Tag_vdot_sole_index_off_tag_space_tag_at_space_in -> 
   (* Ex.: let soi_hf1 = Tag_v.sole_index_off_tag tag_hf1 in *)
      Format.sprintf "let soi_%s = Tag_v.sole_index_off_tag tag_%s in"
       (abbreviation_argument sym_ent)
	(abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Space_match_sym_at_with ->
   (* Ex.: match sym_hf1 with *)
      Format.sprintf "  match sym_%s with"
       (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Space_let_for_das_equal_Das_vdot_make_tag_at_builder_list_in ->
   (* Ex.: let for_das = Singlet_formula_v.make soi_hf1 [Basic_type_v.onebit] in *)
      Utilities_v.not_yet_implemented nam_cod "make Space_let_for_das_equal_Das_vdot_make_tag_at_builder_list_in"

  | Camlline_uno_function_symbol_t.Space_let_for_ac_equal_Efc_vdot_make_tag_ac_in ->
   (* Ex.: let for_ver = Version_formula_v.make tag_ver in *)
      Utilities_v.not_yet_implemented nam_cod "make Space_let_for_ac_equal_Efc_vdot_make_tag_ac_in"

  | Camlline_uno_function_symbol_t.Space_let_sym_at_equal_Et_symbol_vdot_make_nam_at_s_in ->
   (* Ex.:   let sym_ato = Atom_symbol_v.make nam_ato s in *)
      Format.sprintf "  let sym_%s = %s_symbol_v.make nam_%s s in"
      (abbreviation_argument sym_ent)
      (entity_name_capitalized sym_ent)  
      (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Let_make_soi_at_nam_at_s_equal ->
   (* Ex.: let make soi_ato nam_ato s =*)
      Format.sprintf "let make soi_%s nam_%s s ="
       (abbreviation_argument sym_ent)
       (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Space_let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in ->
   (* Ex.: let sym_ato = Tag_v.symbol_off_tag tag_ato in *)
      Format.sprintf "let sym_%s = Tag_v.symbol_off_tag tag_%s in"
       (abbreviation_argument sym_ent)
       (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Space_Et_symbol_vdot_name_sym_at ->
   (* Ex.:  Atom_symbol_v.name sym_ato *)

      Format.sprintf "  %s_symbol_v.name sym_%s"
       (entity_name_capitalized sym_ent)
       (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Let_name_for_at_equal ->
   (* Ex.: let name for_tie = *)

      Format.sprintf "let name for_%s ="
       (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.For_at ->
   (* Ex.: for_tie *)

      Format.sprintf "  for_%s"
       (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Space_Et_formula_vdot_name ->
   (* Ex.:  Point_formula_v.name *)

      Format.sprintf "  %s_formula_v.name"
       (entity_name_capitalized sym_ent)

  | Camlline_uno_function_symbol_t.Space_Es_formula_vdot_map_for_as ->
   (* Ex.: Triangle_scalene_formula_v.map for_trs   *)

      Format.sprintf "  %s_formula_v.map for_%s"
       (entity_name_capitalized sym_ent)
       (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Space_Es_formula_vdot_name_for_as ->
   (* Ex.: Triangle_scalene_formula_v.name for_trs   *)

      Format.sprintf "  %s_formula_v.name for_%s"
       (entity_name_capitalized sym_ent)
       (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Space_let_tag_as_equal_Tag_vdot_make_sym_as_soi_as_in ->
   (* Ex.: let tag_flo = Tag_v.make sym_flo soi_flo in *)

      Format.sprintf "  let tag_%s = Tag_v.make sym_%s soi_%s in"  
       (abbreviation_argument sym_ent)
       (abbreviation_argument sym_ent)
       (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Space_let_tag_a_equal_E_tag_vdot_make_soi_a_in ->
   (* Ex.: let tag_flp = Float_positive_tag_v.make soi_flp in *)

      Format.sprintf "  let tag_%s = %s_tag_v.make soi_%s in"  
       (abbreviation_argument sym_ent)
       (entity_name_capitalized sym_ent)
       (abbreviation_argument sym_ent)

  | Camlline_uno_function_symbol_t.Space_let_nam_a_equal_E_tag_vdot_name_in ->
   (* Ex.: let nam_flo = Float_tag_v.name in *)

      Format.sprintf "  let nam_%s = %s_tag_v.name in"  
       (abbreviation_argument sym_ent)
       (entity_name_capitalized sym_ent)
;;

