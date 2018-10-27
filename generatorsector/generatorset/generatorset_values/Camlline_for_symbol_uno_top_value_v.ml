(** {3 Camlline_for_symbol_uno_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_symbol_uno_top_value_v";
   "Needed-by : VGNR:Camlline_uno_top_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_cfs soi_cal =
  let tag_cfs = Tag_v.make sym_cfs soi_cal in
  let tag_ent_l = 
    Camlline_for_symbol_uno_top_formula_v.entity_tag_list_off_camlline_for_symbol_uno_top_tag 
      tag_cfs 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_cfs 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in

  let tag_cal = Tag_v.make sym_cal soi_cal in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  let sym_cof = Camlline_tag_v.contentfile_symbol_off_camlline_tag tag_cal in
  let sym_usf = Camlline_tag_v.usagefile_symbol_off_camlline_tag tag_cal in

  match sym_cfs with
 | Camlline_for_symbol_uno_top_symbol_t.Et_symbol_vdot_name_sym_at ->
     (* Ex.:  Atom_symbol_v.name sym_ato *)
     
     Format.sprintf "  %s_symbol_v.name sym_%s"
       (entity_name_capitalized sym_ent)
       (abbreviation_argument sym_ent)
       
 | Camlline_for_symbol_uno_top_symbol_t.Et_symbol_vdot_string_off_sym_at ->
     (* Ex.:  Atom_symbol_v.string_off sym_ato *)
     
     Format.sprintf "  %s_symbol_v.string_off sym_%s"
       (entity_name_capitalized sym_ent)
       (abbreviation_argument sym_ent)
       
 | Camlline_for_symbol_uno_top_symbol_t.Let_et_symbol_equal_et_symbol_tdot_et ->
     (* Ex.: let vector = Vector_symbol_t.Vector *)

     Format.sprintf "let %s = %s_symbol_t.%s"
       (entity_name sym_ent)  
       (entity_name_capitalized sym_ent)  
       (entity_name_capitalized sym_ent)  
       
 | Camlline_for_symbol_uno_top_symbol_t.Let_underscore_print_error_make_et_of_string_of_string ->
     (* Ex.: 
        let _ =
	Error_messages_v.print_error nam_cod "make"
        (Format.sprintf "strings %s %s represent an existing Entity_symbol subtype" nam s)
        "it does not exists" "Check"
        in
      *)
     Format.sprintf 
       "   let _ =@.      Error_messages_v.print_error nam_cod \"make\"@.      (Format.sprintf \"strings \\\"%%s\\\" and \\\"%%s\\\" represent an existing %s subtype\" nam s)@.      \"it does not exists\"@.      \"Check file %s_v.ml\"@.    in" 
       (entity_name_capitalized sym_ent)  
       (module_name_capitalized sym_cat sym_ent)  

 | Camlline_for_symbol_uno_top_symbol_t.Let_underscore_print_error_name_et_of_string_of_string ->
     (* Ex.:             Improve
        let _ =
	Error_messages_v.print_error nam_cod "name"
        "Geometry_symbol were defined"
        "it does not exists" "Check"
        in
      *)
     Format.sprintf 
       "   let _ =@.      Error_messages_v.print_error nam_cod \"name\"@.      \"%s were defined\"@.      \"it does not exists\"@.      \"Check\"@.    in" 
       (module_name_capitalized sym_cat sym_ent)  

 | Camlline_for_symbol_uno_top_symbol_t.Let_underscore_print_error_string_off_et_of_string_of_string ->
     (* Ex.:             Improve
        let _ =
	Error_messages_v.print_error nam_cod "string_off"
        "Geometry_symbol were defined"
        "it does not exists" "Check"
        in
      *)
     Format.sprintf 
       "   let _ =@.      Error_messages_v.print_error nam_cod \"string_off\"@.      \"%s were defined\"@.      \"it does not exists\"@.      \"Check\"@.    in" 
       (module_name_capitalized sym_cat sym_ent)  

 | Camlline_for_symbol_uno_top_symbol_t.Let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in ->
     (* Ex.:   let sym_ato = Atom_symbol_v.make nam_ato s in *)

     Format.sprintf "  let sym_%s = %s_symbol_v.make nam_%s s in"
       (abbreviation_argument sym_ent)
       (entity_name_capitalized sym_ent)  
       (abbreviation_argument sym_ent)
       

 | Camlline_for_symbol_uno_top_symbol_t.Let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in ->
     (* Ex.:   let sym_ato = Tag_v.entity_off_tag tag_ato in *)

     Format.sprintf "  let sym_%s = Tag_v.entity_off_tag tag_%s in"
       (abbreviation_argument sym_ent)
       (abbreviation_argument sym_ent)
       
  | Camlline_for_symbol_uno_top_symbol_t.Match_sym_at_with ->
   (* Ex.: match sym_hf1 with *)
      Format.sprintf "  match sym_%s with"
       (abbreviation_argument sym_ent)

  | Camlline_for_symbol_uno_top_symbol_t.Pipe_et_symbol_tdot_et_symbol_arrow_string ->
     (* Ex.: | Vector_symbol_t.Vector -> "vector" *)
     
     Format.sprintf "  | %s_symbol_t.%s -> \"%s\""
       (entity_name_capitalized sym_ent)  
       (entity_name_capitalized sym_ent)  
       (entity_name sym_ent)  
  
 | Camlline_for_symbol_uno_top_symbol_t.Print_fatal_error_make_et_of_string_of_string ->
     (* Ex.: 
	Error_messages_v.print_fatal_error nam_cod "make"
        (Format.sprintf "strings %s %s represent an existing Entity_symbol subtype" nam s)
        "it does not exists" "Check" 
      *)
     Format.sprintf 
       "    Error_messages_v.print_fatal_error nam_cod \"make\"@.      (Format.sprintf \"strings \\\"%%s\\\" and \\\"%%s\\\" represent an existing %s subtype\" nam s)@.      \"it does not exists\"@.      \"Check file %s_v.ml\" " 
       (entity_name_capitalized sym_ent)  
       (module_name_capitalized sym_cat sym_ent)  
       
 | Camlline_for_symbol_uno_top_symbol_t.Print_fatal_error_name_et_of_string_of_string ->
     (* Ex.: 
	Error_messages_v.print_fatal_error nam_cod "name"
        (Format.sprintf "strings %s %s represent an existing Entity_symbol subtype" nam s)
        "it does not exists" "Check" 
      *)
     Format.sprintf 
       "    Error_messages_v.print_fatal_error nam_cod \"name\"@.      (Format.sprintf \"strings \\\"%%s\\\" and \\\"%%s\\\" represent an existing %s subtype\" nam s)@.      \"it does not exists\"@.      \"Check file %s_v.ml\" " 
       (entity_name_capitalized sym_ent)  
       (module_name_capitalized sym_cat sym_ent)  
       
 | Camlline_for_symbol_uno_top_symbol_t.Print_fatal_error_string_off_et_of_string_of_string ->
     (* Ex.: 
	Error_messages_v.print_fatal_error nam_cod "string_off"
        (Format.sprintf "strings %s %s represent an existing Entity_symbol subtype" nam s)
        "it does not exists" "Check" 
      *)
     Format.sprintf 
       "    Error_messages_v.print_fatal_error nam_cod \"string_off\"@.      (Format.sprintf \"strings \\\"%%s\\\" and \\\"%%s\\\" represent an existing %s subtype\" nam s)@.      \"it does not exists\"@.      \"Check file %s_v.ml\" " 
       (entity_name_capitalized sym_ent)  
       (module_name_capitalized sym_cat sym_ent)  
       
  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_et_symbol_make -> 
   (* Ex.: with Failure "Not_a_figureset_symbol:Figureset_symbol_v.ml:make" -> *)

       Format.sprintf "    failwith \"Not_a_%s_symbol:%s:make\"" 
	(entity_name sym_ent)  
	(module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  

  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_et_symbol_name -> 
   (* Ex.: with Failure "Not_a_figureset_symbol:Figureset_symbol_v.ml:name" -> *)

      let sym_cof = Contentfile_symbol_v.value_alone in
       Format.sprintf "    failwith \"Not_a_%s_symbol:%s:name\"" 
	(entity_name sym_ent)  
	(module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  

  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_et_symbol_string_off -> 
   (* Ex.: with Failure "Not_a_figureset_symbol:Figureset_symbol_v.ml:string_off" -> *)

       Format.sprintf "    failwith \"Not_a_%s_symbol:%s:string_off\"" 
	(entity_name sym_ent)  
	(module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  

 | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_bare_et_symbol_make ->
     (* Ex.: failwith "Not_a_topson_leaf:Figureset_symbol_v.ml:make_of_topson_bare" *)
     
     Format.sprintf "  failwith \"Not_a_topson_bare:%s:make_of_topson_bare\"" 
       (module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  
       
 | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_notleaf_et_symbol_make ->
     (* Ex.: failwith "Not_a_topson_notleaf:Figureset_symbol_v.ml:make_of_topson_notleaf" *)
     
     Format.sprintf "  failwith \"Not_a_topson_notleaf:%s:make_of_topson_notleaf\"" 
       (module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  
       
 | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_ofstring_et_symbol_make ->
     (* Ex.: failwith "Not_a_topson_ofstring:Figureset_symbol_v.ml:make_of_topson_ofstring" *)
     
     Format.sprintf "  failwith \"Not_a_topson_ofstring:%s:make_of_topson_ofstring\"" 
       (module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  
       
 | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_bare_et_symbol_name ->
     (* Ex.: failwith "Not_a_topson_leaf:Figureset_symbol_v.ml:name_of_topson_bare" *)
     
     Format.sprintf "  failwith \"Not_a_topson_bare:%s:name_of_topson_bare\"" 
       (module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  
       
 | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_notleaf_et_symbol_name ->
     (* Ex.: failwith "Not_a_topson_notleaf:Figureset_symbol_v.ml:name_of_topson_notleaf" *)
     
     Format.sprintf "  failwith \"Not_a_topson_notleaf:%s:name_of_topson_notleaf\"" 
       (module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  
       
 | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_ofstring_et_symbol_name ->
     (* Ex.: failwith "Not_a_topson_ofstring:Figureset_symbol_v.ml:name_of_topson_ofstring" *)
     
     let sym_cof = Contentfile_symbol_v.value_alone in
     
     Format.sprintf "  failwith \"Not_a_topson_ofstring:%s:name_of_topson_ofstring\"" 
       (module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  

 | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_bare_et_symbol_string_off ->
     (* Ex.: failwith "Not_a_topson_leaf:Figureset_symbol_v.ml:string_off_of_topson_bare" *)
     
     Format.sprintf "  failwith \"Not_a_topson_bare:%s:string_off_of_topson_bare\"" 
       (module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  
       
 | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_notleaf_et_symbol_string_off ->
     (* Ex.: failwith "Not_a_topson_notleaf:Figureset_symbol_v.ml:string_off_of_topson_notleaf" *)
     
     Format.sprintf "  failwith \"Not_a_topson_notleaf:%s:string_off_of_topson_notleaf\"" 
       (module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  
       
 | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_ofstring_et_symbol_string_off ->
     (* Ex.: failwith "Not_a_topson_ofstring:Figureset_symbol_v.ml:string_off_of_topson_ofstring" *)
     
     Format.sprintf "  failwith \"Not_a_topson_ofstring:%s:string_off_of_topson_ofstring\"" 
       (module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  
       
 | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_bare_et_symbol_arrow_make -> 
     (* Ex.: with Failure "Not_a_topson_bare:Figureset_symbol_v.ml:make_of_topson_bare" -> *)
     
       Format.sprintf "  with Failure \"Not_a_topson_bare:%s:make_of_topson_bare\" ->" 
	(module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  
	
 | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_ofstring_et_symbol_arrow_make -> 
     (* Ex.: with Failure "Not_a_topson_ofstring:Figureset_symbol_v.ml:make_of_topson_ofstring" -> *)
     
       Format.sprintf "  with Failure \"Not_a_topson_ofstring:%s:make_of_topson_ofstring\" ->" 
	(module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  
	
  | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_notleaf_et_symbol_arrow_make -> 
   (* Ex.: with Failure "Not_a_topson_notleaf:Figureset_symbol_v.ml:make_of_topson_notleaf" -> *)

       Format.sprintf "  with Failure \"Not_a_topson_notleaf:%s:make_of_topson_notleaf\" ->" 
	(module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  

 | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_bare_et_symbol_arrow_name -> 
     (* Ex.: with Failure "Not_a_topson_bare:Figureset_symbol_v.ml:name_of_topson_bare" -> *)
     
       Format.sprintf "  with Failure \"Not_a_topson_bare:%s:name_of_topson_bare\" ->" 
	(module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  
	
  | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_notleaf_et_symbol_arrow_name -> 
   (* Ex.: with Failure "Not_a_topson_notleaf:Figureset_symbol_v.ml:name_of_topson_notleaf" -> *)

       Format.sprintf "  with Failure \"Not_a_topson_notleaf:%s:name_of_topson_notleaf\" ->" 
	(module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  

 | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_ofstring_et_symbol_arrow_name -> 
     (* Ex.: with Failure "Not_a_topson_ofstring:Figureset_symbol_v.ml:name_of_topson_ofstring" -> *)
     
       Format.sprintf "  with Failure \"Not_a_topson_ofstring:%s:name_of_topson_ofstring\" ->" 
	(module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  

  | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_bare_et_symbol_arrow_string_off -> 
   (* Ex.: with Failure "Not_a_topson_bare:Figureset_symbol_v.ml:string_off_of_topson_bare" -> *)

       Format.sprintf "  with Failure \"Not_a_topson_bare:%s:string_off_of_topson_bare\" ->" 
	(module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  

  | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_notleaf_et_symbol_arrow_string_off -> 
   (* Ex.: with Failure "Not_a_topson_notleaf:Figureset_symbol_v.ml:string_off_of_topson_notleaf" -> *)

       Format.sprintf "  with Failure \"Not_a_topson_notleaf:%s:string_off_of_topson_notleaf\" ->" 
	(module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  

 | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_ofstring_et_symbol_arrow_string_off -> 
     (* Ex.: with Failure "Not_a_topson_ofstring:Figureset_symbol_v.ml:string_off_of_topson_ofstring" -> *)
     
       Format.sprintf "  with Failure \"Not_a_topson_ofstring:%s:string_off_of_topson_ofstring\" ->" 
	(module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf)  
;;

(** {6 Making_of_value} *)

let make sym_cfs soi_cal =
  let str = string_of sym_cfs soi_cal in
  match sym_cfs with
  | Camlline_for_symbol_uno_top_symbol_t.Let_et_symbol_equal_et_symbol_tdot_et ->
     Camlline_for_symbol_uno_top_value_t.Let_et_symbol_equal_et_symbol_tdot_et str
  | Camlline_for_symbol_uno_top_symbol_t.Pipe_et_symbol_tdot_et_symbol_arrow_string ->
     Camlline_for_symbol_uno_top_value_t.Pipe_et_symbol_tdot_et_symbol_arrow_string str
  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_et_symbol_make ->
     Camlline_for_symbol_uno_top_value_t.Failwith_not_a_et_symbol_make str
  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_et_symbol_name ->
     Camlline_for_symbol_uno_top_value_t.Failwith_not_a_et_symbol_name str
  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_et_symbol_string_off ->
     Camlline_for_symbol_uno_top_value_t.Failwith_not_a_et_symbol_string_off str
  | Camlline_for_symbol_uno_top_symbol_t.Et_symbol_vdot_name_sym_at ->
     Camlline_for_symbol_uno_top_value_t.Et_symbol_vdot_name_sym_at str
  | Camlline_for_symbol_uno_top_symbol_t.Et_symbol_vdot_string_off_sym_at ->
     Camlline_for_symbol_uno_top_value_t.Et_symbol_vdot_string_off_sym_at str
  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_bare_et_symbol_make ->
     Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_bare_et_symbol_make str
  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_bare_et_symbol_name ->
     Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_bare_et_symbol_name str
  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_bare_et_symbol_string_off ->
     Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_bare_et_symbol_string_off str
  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_notleaf_et_symbol_make ->
     Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_notleaf_et_symbol_make str
  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_notleaf_et_symbol_name ->
     Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_notleaf_et_symbol_name str
  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_notleaf_et_symbol_string_off ->
     Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_notleaf_et_symbol_string_off str
  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_ofstring_et_symbol_make ->
     Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_ofstring_et_symbol_make str
  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_ofstring_et_symbol_name ->
     Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_ofstring_et_symbol_name str
  | Camlline_for_symbol_uno_top_symbol_t.Failwith_not_a_topson_ofstring_et_symbol_string_off ->
     Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_ofstring_et_symbol_string_off str
  | Camlline_for_symbol_uno_top_symbol_t.Match_sym_at_with ->
     Camlline_for_symbol_uno_top_value_t.Match_sym_at_with str

  | Camlline_for_symbol_uno_top_symbol_t.Let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in ->
     Camlline_for_symbol_uno_top_value_t.Let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in str

  | Camlline_for_symbol_uno_top_symbol_t.Let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in ->
     Camlline_for_symbol_uno_top_value_t.Let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in str

  | Camlline_for_symbol_uno_top_symbol_t.Let_underscore_print_error_make_et_of_string_of_string ->
     Camlline_for_symbol_uno_top_value_t.Let_underscore_print_error_make_et_of_string_of_string str
  | Camlline_for_symbol_uno_top_symbol_t.Let_underscore_print_error_name_et_of_string_of_string ->
     Camlline_for_symbol_uno_top_value_t.Let_underscore_print_error_name_et_of_string_of_string str
  | Camlline_for_symbol_uno_top_symbol_t.Let_underscore_print_error_string_off_et_of_string_of_string ->
     Camlline_for_symbol_uno_top_value_t.Let_underscore_print_error_string_off_et_of_string_of_string str
  | Camlline_for_symbol_uno_top_symbol_t.Print_fatal_error_make_et_of_string_of_string ->
     Camlline_for_symbol_uno_top_value_t.Print_fatal_error_make_et_of_string_of_string str
  | Camlline_for_symbol_uno_top_symbol_t.Print_fatal_error_name_et_of_string_of_string ->
     Camlline_for_symbol_uno_top_value_t.Print_fatal_error_name_et_of_string_of_string str
  | Camlline_for_symbol_uno_top_symbol_t.Print_fatal_error_string_off_et_of_string_of_string ->
     Camlline_for_symbol_uno_top_value_t.Print_fatal_error_string_off_et_of_string_of_string str
  | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_bare_et_symbol_arrow_make ->
     Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_bare_et_symbol_arrow_make str
  | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_bare_et_symbol_arrow_name ->
     Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_bare_et_symbol_arrow_name str
  | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_bare_et_symbol_arrow_string_off ->
     Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_bare_et_symbol_arrow_string_off str
  | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_notleaf_et_symbol_arrow_make ->
     Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_notleaf_et_symbol_arrow_make str
  | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_notleaf_et_symbol_arrow_name ->
     Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_notleaf_et_symbol_arrow_name str
  | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_notleaf_et_symbol_arrow_string_off ->
     Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_notleaf_et_symbol_arrow_string_off str
  | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_ofstring_et_symbol_arrow_make ->
     Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_ofstring_et_symbol_arrow_make str
  | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_ofstring_et_symbol_arrow_name ->
     Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_ofstring_et_symbol_arrow_name str
  | Camlline_for_symbol_uno_top_symbol_t.With_failure_not_a_topson_ofstring_et_symbol_arrow_string_off ->
     Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_ofstring_et_symbol_arrow_string_off str

;;

(** {6 Retrieving} *)

let retrieve tag_cfs =
  let sym_cfs = Tag_v.entity_off_tag tag_cfs in
  let soi_cal = Tag_v.sole_index_off_tag tag_cfs in
  make sym_cfs soi_cal
;;

(** {6 String_offing} *)

let string_off val_cfs =
  match val_cfs with
  | Camlline_for_symbol_uno_top_value_t.Let_et_symbol_equal_et_symbol_tdot_et str -> str 
  | Camlline_for_symbol_uno_top_value_t.Pipe_et_symbol_tdot_et_symbol_arrow_string str -> str 
  | Camlline_for_symbol_uno_top_value_t.Failwith_not_a_et_symbol_make str -> str 
  | Camlline_for_symbol_uno_top_value_t.Failwith_not_a_et_symbol_name str -> str 
  | Camlline_for_symbol_uno_top_value_t.Failwith_not_a_et_symbol_string_off str -> str 
  | Camlline_for_symbol_uno_top_value_t.Et_symbol_vdot_name_sym_at str -> str 
  | Camlline_for_symbol_uno_top_value_t.Et_symbol_vdot_string_off_sym_at str -> str 
  | Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_bare_et_symbol_make str -> str 
  | Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_bare_et_symbol_name str -> str 
  | Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_bare_et_symbol_string_off str -> str 
  | Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_notleaf_et_symbol_make str -> str 
  | Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_notleaf_et_symbol_name str -> str 
  | Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_notleaf_et_symbol_string_off str -> str 
  | Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_ofstring_et_symbol_make str -> str 
  | Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_ofstring_et_symbol_name str -> str 
  | Camlline_for_symbol_uno_top_value_t.Failwith_not_a_topson_ofstring_et_symbol_string_off str -> str 
  | Camlline_for_symbol_uno_top_value_t.Let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in str -> str 
  | Camlline_for_symbol_uno_top_value_t.Let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in str -> str 
  | Camlline_for_symbol_uno_top_value_t.Let_underscore_print_error_make_et_of_string_of_string str -> str 
  | Camlline_for_symbol_uno_top_value_t.Let_underscore_print_error_name_et_of_string_of_string str -> str 
  | Camlline_for_symbol_uno_top_value_t.Let_underscore_print_error_string_off_et_of_string_of_string str -> str 
  | Camlline_for_symbol_uno_top_value_t.Match_sym_at_with str -> str
  | Camlline_for_symbol_uno_top_value_t.Print_fatal_error_make_et_of_string_of_string str -> str 
  | Camlline_for_symbol_uno_top_value_t.Print_fatal_error_name_et_of_string_of_string str -> str 
  | Camlline_for_symbol_uno_top_value_t.Print_fatal_error_string_off_et_of_string_of_string str -> str 
  | Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_bare_et_symbol_arrow_make str -> str 
  | Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_bare_et_symbol_arrow_name str -> str 
  | Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_bare_et_symbol_arrow_string_off str -> str 
  | Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_notleaf_et_symbol_arrow_make str -> str 
  | Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_notleaf_et_symbol_arrow_name str -> str 
  | Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_notleaf_et_symbol_arrow_string_off str -> str 
  | Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_ofstring_et_symbol_arrow_make str -> str 
  | Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_ofstring_et_symbol_arrow_name str -> str 
  | Camlline_for_symbol_uno_top_value_t.With_failure_not_a_topson_ofstring_et_symbol_arrow_string_off str -> str 

;;

