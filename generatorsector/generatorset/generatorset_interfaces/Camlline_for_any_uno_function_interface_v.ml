(** {3 Camlline_for_any_uno_function_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_any_uno_function_interface_v";
   "Needed-by : FGNR:Camlline_for_any_uno_function_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make dec_cfa soi_cal =
  let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_cfa in

  let sym_cfa = Decuplet_v.left_off_decuplet dec_cfa in
  match sym_cfa with
  | Camlline_for_any_uno_function_symbol_t.Comment_es_comment
  | Camlline_for_any_uno_function_symbol_t.Es_any_vdot_fullname_ac_as
  | Camlline_for_any_uno_function_symbol_t.Es_any_vdot_longname_ac_as
  | Camlline_for_any_uno_function_symbol_t.Es_any_vdot_make_ac_as
  | Camlline_for_any_uno_function_symbol_t.Es_any_vdot_name_ac_as
  | Camlline_for_any_uno_function_symbol_t.Es_any_vdot_string_off_ac_as
  | Camlline_for_any_uno_function_symbol_t.Format_sprintf_fullname_ac_as_string_off_ac_as
  | Camlline_for_any_uno_function_symbol_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as
  | Camlline_for_any_uno_function_symbol_t.Pipe_datastructure_ac_as_arrow ->

      let sym_snl_l = Tools_ignr_v.entity_topson_notleaf_symbol_list_of_dectup dec_cfa in
      let idx_gro = Sole_index_v.father_index_off_sole_index soi_cal in
      let sym_ent_snl = List.nth sym_snl_l (idx_gro-1) in

      [
       sym_ent_snl;
     ]

  | Camlline_for_any_uno_function_symbol_t.Left_off_doublet
  | Camlline_for_any_uno_function_symbol_t.Left_off_triplet 
  | Camlline_for_any_uno_function_symbol_t.Let_fullname_ac_at_equal
  | Camlline_for_any_uno_function_symbol_t.Let_longname_ac_at_equal
  | Camlline_for_any_uno_function_symbol_t.Let_string_off_ac_at_equal 
  | Camlline_for_any_uno_function_symbol_t.Middle_off_triplet
  | Camlline_for_any_uno_function_symbol_t.Right_off_doublet
  | Camlline_for_any_uno_function_symbol_t.Right_off_triplet
  | Camlline_for_any_uno_function_symbol_t.Double_quote_current
  | Camlline_for_any_uno_function_symbol_t.Title_category
  | Camlline_for_any_uno_function_symbol_t.Title_functionalities ->

      [
       sym_ent_top;
     ]

;;
