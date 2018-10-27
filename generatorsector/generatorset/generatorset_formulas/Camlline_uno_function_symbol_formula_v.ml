(** {3 Camlline_uno_function_symbol_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_uno_function_symbol_formula_v";
   "Needed-by : FGNR:Camlline_uno_function_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a Stem type";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cfs =
  match for_cfs with
  | Camlline_uno_function_symbol_formula_t.Print_fatal_error_make_of_string_of_string _ ->
      Camlline_uno_function_symbol_symbol_t.Print_fatal_error_make_of_string_of_string
	
(* topson Es Notleaf *)
  | Camlline_uno_function_symbol_formula_t.Failwith_not_Es_symbol _ ->
      Camlline_uno_function_symbol_symbol_t.Failwith_not_Es_symbol

  | Camlline_uno_function_symbol_formula_t.With_failure_not_Es_symbol_arrow _ ->
      Camlline_uno_function_symbol_symbol_t.With_failure_not_Es_symbol_arrow

  | Camlline_uno_function_symbol_formula_t.Lpar_Es_symbol_vdot_make_of_string_of_string_rpar _ ->     
      Camlline_uno_function_symbol_symbol_t.Lpar_Es_symbol_vdot_make_of_string_of_string_rpar

(* top Et *)
  | Camlline_uno_function_symbol_formula_t.Let_et_symbol_equal_Et_symbol_tdot_Et _ ->
      Camlline_uno_function_symbol_symbol_t.Let_et_symbol_equal_Et_symbol_tdot_Et
 
  | Camlline_uno_function_symbol_formula_t.Pipe_Et_symbol_tdot_Et_symbol_arrow_string _ ->
      Camlline_uno_function_symbol_symbol_t.Pipe_Et_symbol_tdot_Et_symbol_arrow_string

  | Camlline_uno_function_symbol_formula_t.Space_Et_symbol_vdot_name_sym_at _ ->
      Camlline_uno_function_symbol_symbol_t.Space_Et_symbol_vdot_name_sym_at

  | Camlline_uno_function_symbol_formula_t.Let_sym_at_equal_Et_symbol_vdot_make_nam_at_s_in _ ->
      Camlline_uno_function_symbol_symbol_t.Let_sym_at_equal_Et_symbol_vdot_make_nam_at_s_in

  | Camlline_uno_function_symbol_formula_t.Failwith_not_a_topson_leaf_Et_symbol_make _ -> 
      Camlline_uno_function_symbol_symbol_t.Failwith_not_a_topson_leaf_Et_symbol_make

  | Camlline_uno_function_symbol_formula_t.Failwith_not_a_topson_notleaf_Et_symbol_make _ -> 
      Camlline_uno_function_symbol_symbol_t.Failwith_not_a_topson_notleaf_Et_symbol_make

  | Camlline_uno_function_symbol_formula_t.With_failure_not_a_topson_leaf_Et_symbol_arrow _ ->
      Camlline_uno_function_symbol_symbol_t.With_failure_not_a_topson_leaf_Et_symbol_arrow

  | Camlline_uno_function_symbol_formula_t.With_failure_not_a_topson_notleaf_Et_symbol_arrow _ ->
      Camlline_uno_function_symbol_symbol_t.With_failure_not_a_topson_notleaf_Et_symbol_arrow

(* current Ec *)
  | Camlline_uno_function_symbol_formula_t.Pipe_ecstring_arrow_ec _ ->
      Camlline_uno_function_symbol_symbol_t.Pipe_ecstring_arrow_ec

  | Camlline_uno_function_symbol_formula_t.Pipe_ecstring_arrow_ec_sarg _ ->
      Camlline_uno_function_symbol_symbol_t.Pipe_ecstring_arrow_ec

  | Camlline_uno_function_symbol_formula_t.Pipe_string_arrow_ec _ ->
      Camlline_uno_function_symbol_symbol_t.Pipe_string_arrow_ec

;;

(** {6 Naming_for_formula} *)

let name for_cfs = 
  let sym_cfs = symbol_of_formula for_cfs in
  Camlline_uno_function_symbol_symbol_v.name sym_cfs
;;
(* ***

let string_off for_cfs =
  let sym_cfs = symbol_of_formula for_cfs in
  Camlline_uno_function_symbol_symbol_v.string_off sym_cfs
;;

let longname for_cfs =
  Format.sprintf "Camlline_uno_function_symbol_formula_t.%s" 
    (String.capitalize (name for_cfs))

let fullname for_cfs =
  Format.sprintf "%s \"%s\"" (longname for_cfs) (string_off for_cfs)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cfs soi_cal =
  let tag_cfs = Tag_v.make sym_cfs soi_cal in
  let dec_cfs = 
    Camlline_uno_function_symbol_tag_v.camlline_uno_function_symbol_dectup_off_camlline_uno_function_symbol_tag 
      tag_cfs 
  in
  let sym_ent_l = Camlline_uno_function_symbol_interface_v.make dec_cfs soi_cal in
  let soi_ent_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_ent_l)
      soi_cal
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ent_l soi_ent_l;
  
  List.map2 Tag_v.make sym_ent_l soi_ent_l
;;

(** {6 Making_for_formula} *)

let make sym_cfs soi_cal =
  let tag_ent_l = build_n_store sym_cfs soi_cal in

  match sym_cfs with
  | Camlline_uno_function_symbol_symbol_t.Print_fatal_error_make_of_string_of_string ->
      Camlline_uno_function_symbol_formula_t.Print_fatal_error_make_of_string_of_string tag_ent_l
	
(* topson Es Notleaf *)
  | Camlline_uno_function_symbol_symbol_t.Failwith_not_Es_symbol ->
      Camlline_uno_function_symbol_formula_t.Failwith_not_Es_symbol tag_ent_l

  | Camlline_uno_function_symbol_symbol_t.With_failure_not_Es_symbol_arrow ->
      Camlline_uno_function_symbol_formula_t.With_failure_not_Es_symbol_arrow tag_ent_l

  | Camlline_uno_function_symbol_symbol_t.Lpar_Es_symbol_vdot_make_of_string_of_string_rpar ->     
      Camlline_uno_function_symbol_formula_t.Lpar_Es_symbol_vdot_make_of_string_of_string_rpar tag_ent_l

(* top Et *)
  | Camlline_uno_function_symbol_symbol_t.Let_et_symbol_equal_Et_symbol_tdot_Et ->
      Camlline_uno_function_symbol_formula_t.Let_et_symbol_equal_Et_symbol_tdot_Et tag_ent_l
 
  | Camlline_uno_function_symbol_symbol_t.Pipe_Et_symbol_tdot_Et_symbol_arrow_string ->
      Camlline_uno_function_symbol_formula_t.Pipe_Et_symbol_tdot_Et_symbol_arrow_string tag_ent_l

  | Camlline_uno_function_symbol_symbol_t.Space_Et_symbol_vdot_name_sym_at ->
      Camlline_uno_function_symbol_formula_t.Space_Et_symbol_vdot_name_sym_at tag_ent_l

  | Camlline_uno_function_symbol_symbol_t.Let_sym_at_equal_Et_symbol_vdot_make_nam_at_s_in ->
      Camlline_uno_function_symbol_formula_t.Let_sym_at_equal_Et_symbol_vdot_make_nam_at_s_in tag_ent_l

  | Camlline_uno_function_symbol_symbol_t.Failwith_not_a_topson_leaf_Et_symbol_make -> 
      Camlline_uno_function_symbol_formula_t.Failwith_not_a_topson_leaf_Et_symbol_make tag_ent_l

  | Camlline_uno_function_symbol_symbol_t.Failwith_not_a_topson_notleaf_Et_symbol_make -> 
      Camlline_uno_function_symbol_formula_t.Failwith_not_a_topson_notleaf_Et_symbol_make tag_ent_l

  | Camlline_uno_function_symbol_symbol_t.With_failure_not_a_topson_leaf_Et_symbol_arrow ->
      Camlline_uno_function_symbol_formula_t.With_failure_not_a_topson_leaf_Et_symbol_arrow tag_ent_l

  | Camlline_uno_function_symbol_symbol_t.With_failure_not_a_topson_notleaf_Et_symbol_arrow ->
      Camlline_uno_function_symbol_formula_t.With_failure_not_a_topson_notleaf_Et_symbol_arrow tag_ent_l

(* current Ec *)
  | Camlline_uno_function_symbol_symbol_t.Pipe_ecstring_arrow_ec ->
      Camlline_uno_function_symbol_formula_t.Pipe_ecstring_arrow_ec tag_ent_l

  | Camlline_uno_function_symbol_symbol_t.Pipe_ecstring_arrow_ec_sarg ->
      Camlline_uno_function_symbol_formula_t.Pipe_ecstring_arrow_ec tag_ent_l

  | Camlline_uno_function_symbol_symbol_t.Pipe_string_arrow_ec ->
      Camlline_uno_function_symbol_formula_t.Pipe_string_arrow_ec tag_ent_l

;;

(** {6 Retrieving} *)

let retrieve tag_cfs =
  let soi_gro = Tag_v.sole_index_off_tag tag_cfs in
  let sym_cfs = Tag_v.entity_off_tag tag_cfs in
  make sym_cfs soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_uno_function_symbol_formula for_cfs =
  match for_cfs with
  | Camlline_uno_function_symbol_formula_t.Failwith_not_Es_symbol tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_symbol_formula_t.Let_et_symbol_equal_Et_symbol_tdot_Et tag_ent_l ->
     tag_ent_l 

  | Camlline_uno_function_symbol_formula_t.Lpar_Es_symbol_vdot_make_of_string_of_string_rpar tag_ent_l ->
     tag_ent_l

  | Camlline_uno_function_symbol_formula_t.Pipe_Et_symbol_tdot_Et_symbol_arrow_string tag_ent_l ->
     tag_ent_l 

  | Camlline_uno_function_symbol_formula_t.Pipe_ecstring_arrow_ec tag_ent_l ->
     tag_ent_l

  | Camlline_uno_function_symbol_formula_t.Pipe_ecstring_arrow_ec_sarg tag_ent_l ->
     tag_ent_l

  | Camlline_uno_function_symbol_formula_t.Pipe_string_arrow_ec tag_ent_l ->
     tag_ent_l

  | Camlline_uno_function_symbol_formula_t.Print_fatal_error_make_of_string_of_string tag_ent_l ->
     tag_ent_l

  | Camlline_uno_function_symbol_formula_t.Space_Et_symbol_vdot_name_sym_at tag_ent_l ->
     tag_ent_l
	
  | Camlline_uno_function_symbol_formula_t.Let_sym_at_equal_Et_symbol_vdot_make_nam_at_s_in tag_ent_l ->
     tag_ent_l

  | Camlline_uno_function_symbol_formula_t.With_failure_not_Es_symbol_arrow tag_ent_l ->
     tag_ent_l

  | Camlline_uno_function_symbol_formula_t.With_failure_not_a_topson_leaf_Et_symbol_arrow tag_ent_l ->
     tag_ent_l 

  | Camlline_uno_function_symbol_formula_t.With_failure_not_a_topson_notleaf_Et_symbol_arrow tag_ent_l ->
     tag_ent_l

  | Camlline_uno_function_symbol_formula_t.Failwith_not_a_topson_leaf_Et_symbol_make tag_ent_l ->
     tag_ent_l

  | Camlline_uno_function_symbol_formula_t.Failwith_not_a_topson_notleaf_Et_symbol_make tag_ent_l ->
     tag_ent_l

;;

let entity_tag_list_off_camlline_uno_function_symbol_tag tag_cfs =
  let for_cfs = retrieve tag_cfs in
  entity_tag_list_off_camlline_uno_function_symbol_formula for_cfs
;; 

(** {6 Iterating_for_formula_uno_function_symbol.} *)

let map f_of_tag_ent for_cfs = 
  let tag_ent_l = entity_tag_list_off_camlline_uno_function_symbol_formula for_cfs in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cfs = 
  let tag_ent_l = entity_tag_list_off_camlline_uno_function_symbol_formula for_cfs in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cfs_1 for_cfs_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_uno_function_symbol_formula for_cfs_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_uno_function_symbol_formula for_cfs_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cfs_1 for_cfs_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_uno_function_symbol_formula for_cfs_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_uno_function_symbol_formula for_cfs_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

