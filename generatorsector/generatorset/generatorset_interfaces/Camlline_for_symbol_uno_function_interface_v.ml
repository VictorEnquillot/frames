(** {3 Camlline_for_symbol_uno_function_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_symbol_uno_function_interface_v";
   "Needed-by : FGNR:Camlline_for_symbol_uno_function_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make dec_cfs soi_cal =
  let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_cfs in

  let sym_snl_l = Tools_ignr_v.entity_topson_notleaf_symbol_list_of_dectup dec_cfs in
  let idx_gro = Sole_index_v.father_index_off_sole_index soi_cal in
  let sym_ent_snl = List.nth sym_snl_l (idx_gro-1) in

  let sym_cfs = Decuplet_v.left_off_decuplet dec_cfs in
  match sym_cfs with
  | Camlline_for_symbol_uno_function_symbol_t.Print_fatal_error_make_of_string_of_string ->

      [
       sym_ent_top;
     ]

(* topson Es Notleaf *)
  | Camlline_for_symbol_uno_function_symbol_t.Failwith_not_Es_symbol ->

      Utilities_v.not_yet_implemented nam_cod "interface Es"

  | Camlline_for_symbol_uno_function_symbol_t.With_failure_not_Es_symbol_arrow 
  | Camlline_for_symbol_uno_function_symbol_t.Lpar_Es_symbol_vdot_make_of_string_of_string_rpar -> 

      [
       sym_ent_snl; 
     ]

(* top Et *)
  | Camlline_for_symbol_uno_function_symbol_t.Let_et_symbol_equal_Et_symbol_tdot_Et 
  | Camlline_for_symbol_uno_function_symbol_t.Pipe_Et_symbol_tdot_Et_symbol_arrow_string
  | Camlline_for_symbol_uno_function_symbol_t.Space_Et_symbol_vdot_name_sym_at
  | Camlline_for_symbol_uno_function_symbol_t.Let_sym_at_equal_Et_symbol_vdot_make_nam_at_s_in ->

      Utilities_v.not_yet_implemented nam_cod "interface Et"

  | Camlline_for_symbol_uno_function_symbol_t.Failwith_not_a_topson_leaf_Et_symbol_make 
  | Camlline_for_symbol_uno_function_symbol_t.With_failure_not_a_topson_leaf_Et_symbol_arrow 
  | Camlline_for_symbol_uno_function_symbol_t.With_failure_not_a_topson_notleaf_Et_symbol_arrow ->

      [
       sym_ent_top
     ]
	
(* current Ec *)
  | Camlline_for_symbol_uno_function_symbol_t.Pipe_esstring_arrow_es ->

      [
       sym_ent_snl
     ]

  | Camlline_for_symbol_uno_function_symbol_t.Pipe_esstring_arrow_es_sarg ->
      Utilities_v.not_yet_implemented nam_cod "interface Pipe_esstring_arrow_es_sarg"

  | Camlline_for_symbol_uno_function_symbol_t.Pipe_string_arrow_ec ->
      Utilities_v.not_yet_implemented nam_cod "interface Pipe_string_arrow_ec"
;;
