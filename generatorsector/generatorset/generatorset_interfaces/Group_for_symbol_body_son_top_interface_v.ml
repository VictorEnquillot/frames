(** {3 Group_for_symbol_body_son_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_symbol_body_son_top_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Group_for_symbol_body_son_top_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_gst = 
  match sym_gst with 
  | Group_for_symbol_body_son_top_symbol_t.Pipe_is_onlyson_bare_symbol_off_top_symbol ->
  (* | Geometryset_symbol_t.Vector -> true *)

      let sym_ca1 = Camlline_for_any_duo_son_top_bare_symbol_v.pipe_et_any_tdot_es_arrow_true in
 
     [
      Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_bare_symbol sym_ca1;
     ] 

  | Group_for_symbol_body_son_top_symbol_t.Pipe_is_onlyson_ofstring_symbol_off_top_symbol ->
  (* | Geometryset_symbol_t.Point _ -> true *)

      let sym_ca1 = Camlline_for_any_duo_son_top_ofstring_symbol_v.pipe_et_any_tdot_es_underscore_arrow_true in
 
     [
      Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_ofstring_symbol sym_ca1;
     ] 

  | Group_for_symbol_body_son_top_symbol_t.Pipe_is_onlyson_notleaf_symbol_off_top_symbol ->
  (* | Geometryset_symbol_t.Triangle_symbol _ -> true *)

      let sym_ca1 = Camlline_for_any_duo_son_top_notleaf_symbol_v.pipe_et_any_tdot_es_any_underscore_arrow_true in

     [
      Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_ca1;
     ] 

  | Group_for_symbol_body_son_top_symbol_t.Pipe_onlyson_notleaf_symbol_off_top_symbol ->
      (* | Geometryset_symbol_t.Triangle_symbol sym_tri -> sym_tri *)
      
      let sym_ca1 = Camlline_for_any_duo_son_top_notleaf_symbol_v.pipe_et_any_tdot_es_any_ac_as_arrow_ac_as in
      
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_ca1;
     ] 
	
  | Group_for_symbol_body_son_top_symbol_t.Pipe_is_topson_bare_symbol_off_top_symbol ->
  (* | Geometryset_symbol_t.Vector -> true *)
  (* | _ -> false *)

      let sym_ca1 = Camlline_for_any_duo_son_top_bare_symbol_v.pipe_et_any_tdot_es_arrow_true in
      let sym_ca2 = Camlline_constant_function_symbol_v.pipe_underscore_arrow_false in
 
     [
      Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_bare_symbol sym_ca1;
      Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca2;
     ] 

  | Group_for_symbol_body_son_top_symbol_t.Pipe_is_topson_ofstring_symbol_off_top_symbol ->
  (* | Geometryset_symbol_t.Point _ -> true *)
  (* | _ -> false *)

      let sym_ca1 = Camlline_for_any_duo_son_top_ofstring_symbol_v.pipe_et_any_tdot_es_underscore_arrow_true in
      let sym_ca2 = Camlline_constant_function_symbol_v.pipe_underscore_arrow_false in
 
     [
      Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_ofstring_symbol sym_ca1;
      Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca2;
     ] 

  | Group_for_symbol_body_son_top_symbol_t.Pipe_is_topson_notleaf_symbol_off_top_symbol ->
  (* | Geometryset_symbol_t.Triangle_symbol _ -> true *)
  (* | _ -> false *)

      let sym_ca1 = Camlline_for_any_duo_son_top_notleaf_symbol_v.pipe_et_any_tdot_es_any_underscore_arrow_true in
      let sym_ca2 = Camlline_constant_function_symbol_v.pipe_underscore_arrow_false in
 
     [
      Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_ca1;
      Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca2;
     ] 

  | Group_for_symbol_body_son_top_symbol_t.Pipe_topson_notleaf_symbol_off_top_symbol ->
  (* | Geometryset_symbol_t.Triangle_symbol sym_tri -> sym_tri *)
  (* | sym_geo -> Error_messages_v.print_fatal_error *)
  (*     nam_cod "triangle_symbol_off_geometryset_symbol" *)
  (*     "Triangle_symbol" *)
  (*     (name sym_geo) "check" *)

      let sym_ca1 = Camlline_for_any_duo_son_top_notleaf_symbol_v.pipe_et_any_tdot_es_any_ac_as_arrow_ac_as in
      let sym_ca2 = Camlline_for_any_duo_son_top_notleaf_symbol_v.pipe_print_fatal_error_es_any_off_et_any_4_lines in
 
     [
      Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_ca1;
      Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_ca2;
     ] 

  | Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_bare_function ->

      let sym_ca1 = Camlline_for_symbol_duo_son_top_symbol_v.pipe_et_symbol_tdot_es_arrow_string in

     [
      Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_duo_son_top_symbol sym_ca1;
     ] 

  | Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_ofstring_function ->
   (* | Geometryset_symbol_t.Point _ -> "point" *)

      let sym_ca1 = Camlline_for_symbol_duo_son_top_ofstring_symbol_v.pipe_et_symbol_tdot_es_underscore_arrow_string in
     [
      Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_duo_son_top_ofstring_symbol sym_ca1;
     ] 

  | Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function ->
 
      let sym_ca1 = Camlline_for_any_duo_son_top_notleaf_symbol_v.pipe_et_any_tdot_es_any_ac_as_arrow in
      let sym_ca2 = Camlline_for_symbol_uno_son_notleaf_symbol_v.es_symbol_vdot_name_sym_as in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol sym_ca2;
     ] 
	
  | Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_string_off_bare_function ->
   (* | Geometryset_symbol_t.Vector -> "" *)

      let sym_ca1 = Camlline_for_symbol_duo_son_top_bare_symbol_v.pipe_et_symbol_tdot_es_arrow_emptystring in
     [
      Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_duo_son_top_bare_symbol sym_ca1;
     ] 

  | Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_string_off_ofstring_function ->
   (* | Geometry_set_t.Point s -> s *)

      let sym_ca1 = Camlline_for_symbol_duo_son_top_ofstring_symbol_v.pipe_et_symbol_tdot_es_sarg_arrow_sarg in
     [
      Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_duo_son_top_ofstring_symbol sym_ca1;
     ] 

  | Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_string_off_notleaf_function -> 

      let sym_ca1 = Camlline_for_any_duo_son_top_notleaf_symbol_v.pipe_et_any_tdot_es_any_ac_as_arrow in
      let sym_ca2 = Camlline_for_symbol_uno_son_notleaf_symbol_v.es_symbol_vdot_string_off_sym_as in
 
     [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol sym_ca2;
     ] 

  | Group_for_symbol_body_son_top_symbol_t.Try_top_of_topson_with_failure_arrow ->
      let sym_ca1 = Camlline_for_symbol_duo_son_top_symbol_v.try_et_symbol_of_es_symbol in
      let sym_ca2 = Camlline_for_symbol_uno_son_symbol_v.lpar_es_symbol_vdot_make_of_string_of_string_rpar in
      let sym_ca3 = Camlline_for_symbol_uno_son_symbol_v.with_failure_not_es_symbol_arrow in

      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_duo_son_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_son_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_son_symbol sym_ca3;
     ] 

  | Group_for_symbol_body_son_top_symbol_t.Upgrade_topson_symbol ->
   (* "  Geometryset_symbol_t.Triangle_symbol sym_tri"; *) 
      let sym_ca1 = Camlline_for_any_duo_son_top_notleaf_symbol_v.et_any_tdot_es_any_ac_as in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_ca1;
     ] 
	
;;

