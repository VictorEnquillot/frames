(** {3 Camlline_for_symbol_uno_function_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_symbol_uno_function_formula_v";
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

let symbol_of_formula for_cuf =
  match for_cuf with
  | Camlline_for_symbol_uno_function_formula_t.Print_fatal_error_make_of_string_of_string _ ->
      Camlline_for_symbol_uno_function_symbol_t.Print_fatal_error_make_of_string_of_string
	
(* topson Es Notleaf *)
  | Camlline_for_symbol_uno_function_formula_t.Failwith_not_es_symbol _ ->
      Camlline_for_symbol_uno_function_symbol_t.Failwith_not_es_symbol

  | Camlline_for_symbol_uno_function_formula_t.With_failure_not_es_symbol_arrow _ ->
      Camlline_for_symbol_uno_function_symbol_t.With_failure_not_es_symbol_arrow

  | Camlline_for_symbol_uno_function_formula_t.Lpar_es_symbol_vdot_make_of_string_of_string_rpar _ ->     
      Camlline_for_symbol_uno_function_symbol_t.Lpar_es_symbol_vdot_make_of_string_of_string_rpar

(* top Et *)
  | Camlline_for_symbol_uno_function_formula_t.Let_et_symbol_equal_et_symbol_tdot_et _ ->
      Camlline_for_symbol_uno_function_symbol_t.Let_et_symbol_equal_et_symbol_tdot_et
 
  | Camlline_for_symbol_uno_function_formula_t.Pipe_et_symbol_tdot_et_symbol_arrow_string _ ->
      Camlline_for_symbol_uno_function_symbol_t.Pipe_et_symbol_tdot_et_symbol_arrow_string

  | Camlline_for_symbol_uno_function_formula_t.Et_symbol_vdot_name_sym_at _ ->
      Camlline_for_symbol_uno_function_symbol_t.Et_symbol_vdot_name_sym_at

  | Camlline_for_symbol_uno_function_formula_t.Let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in _ ->
      Camlline_for_symbol_uno_function_symbol_t.Let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in

  | Camlline_for_symbol_uno_function_formula_t.Failwith_not_a_topson_leaf_et_symbol_make _ -> 
      Camlline_for_symbol_uno_function_symbol_t.Failwith_not_a_topson_leaf_et_symbol_make

  | Camlline_for_symbol_uno_function_formula_t.Failwith_not_a_topson_notleaf_et_symbol_make _ -> 
      Camlline_for_symbol_uno_function_symbol_t.Failwith_not_a_topson_notleaf_et_symbol_make

  | Camlline_for_symbol_uno_function_formula_t.With_failure_not_a_topson_leaf_et_symbol_arrow _ ->
      Camlline_for_symbol_uno_function_symbol_t.With_failure_not_a_topson_leaf_et_symbol_arrow

  | Camlline_for_symbol_uno_function_formula_t.With_failure_not_a_topson_notleaf_et_symbol_arrow _ ->
      Camlline_for_symbol_uno_function_symbol_t.With_failure_not_a_topson_notleaf_et_symbol_arrow

(* current Ec *)
  | Camlline_for_symbol_uno_function_formula_t.Pipe_esstring_arrow_es _ ->
      Camlline_for_symbol_uno_function_symbol_t.Pipe_esstring_arrow_es

  | Camlline_for_symbol_uno_function_formula_t.Pipe_esstring_arrow_es_sarg _ ->
      Camlline_for_symbol_uno_function_symbol_t.Pipe_esstring_arrow_es

  | Camlline_for_symbol_uno_function_formula_t.Pipe_string_arrow_ec _ ->
      Camlline_for_symbol_uno_function_symbol_t.Pipe_string_arrow_ec

;;

(** {6 Naming_for_formula} *)

let name for_cuf = 
  let sym_cuf = symbol_of_formula for_cuf in
  Camlline_for_symbol_uno_function_symbol_v.name sym_cuf
;;
(* ***

let string_off for_cuf =
  let sym_cuf = symbol_of_formula for_cuf in
  Camlline_for_symbol_uno_function_symbol_v.string_off sym_cuf
;;

let longname for_cuf =
  Format.sprintf "Camlline_for_symbol_uno_function_formula_t.%s" 
    (String.capitalize (name for_cuf))

let fullname for_cuf =
  Format.sprintf "%s \"%s\"" (longname for_cuf) (string_off for_cuf)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cuf soi_cal =
  let tag_cuf = Tag_v.make sym_cuf soi_cal in
  let dec_cuf = 
    Camlline_for_symbol_uno_function_tag_v.camlline_for_symbol_uno_function_dectup_off_camlline_for_symbol_uno_function_tag 
      tag_cuf 
  in
  let idx_gro = Sole_index_v.father_index_off_sole_index soi_cal in
  let sym_ent_tos_l = Tools_ignr_v.entity_topson_symbol_list_of_dectup dec_cuf in
  let sym_ent_cur = 
    try List.nth sym_ent_tos_l (idx_gro-1) 
    with | Failure "nth" ->
      Error_messages_v.print_fatal_error nam_cod "make"
	"Number of Notleaf Entity_symbol > 0"
	(Format.sprintf "None of them for Camlline >%s< when idx_gro = %i" 
	   (Camlline_for_symbol_uno_function_symbol_v.name sym_cuf) idx_gro
	)
	"Check"
  in

(* BT builders *)

  let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_cuf in
  let sym_ent_l = 
    Camlline_for_symbol_uno_function_interface_v.make 
      sym_cuf 
      sym_ent_cur (* Leaf bare *)
      sym_ent_top
  in
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

let make sym_cuf soi_cal =
  let tag_ent_l = build_n_store sym_cuf soi_cal in

  match sym_cuf with
  | Camlline_for_symbol_uno_function_symbol_t.Print_fatal_error_make_of_string_of_string ->
      Camlline_for_symbol_uno_function_formula_t.Print_fatal_error_make_of_string_of_string tag_ent_l
	
(* topson Es Notleaf *)
  | Camlline_for_symbol_uno_function_symbol_t.Failwith_not_es_symbol ->
      Camlline_for_symbol_uno_function_formula_t.Failwith_not_es_symbol tag_ent_l

  | Camlline_for_symbol_uno_function_symbol_t.With_failure_not_es_symbol_arrow ->
      Camlline_for_symbol_uno_function_formula_t.With_failure_not_es_symbol_arrow tag_ent_l

  | Camlline_for_symbol_uno_function_symbol_t.Lpar_es_symbol_vdot_make_of_string_of_string_rpar ->     
      Camlline_for_symbol_uno_function_formula_t.Lpar_es_symbol_vdot_make_of_string_of_string_rpar tag_ent_l

(* top Et *)
  | Camlline_for_symbol_uno_function_symbol_t.Let_et_symbol_equal_et_symbol_tdot_et ->
      Camlline_for_symbol_uno_function_formula_t.Let_et_symbol_equal_et_symbol_tdot_et tag_ent_l
 
  | Camlline_for_symbol_uno_function_symbol_t.Pipe_et_symbol_tdot_et_symbol_arrow_string ->
      Camlline_for_symbol_uno_function_formula_t.Pipe_et_symbol_tdot_et_symbol_arrow_string tag_ent_l

  | Camlline_for_symbol_uno_function_symbol_t.Et_symbol_vdot_name_sym_at ->
      Camlline_for_symbol_uno_function_formula_t.Et_symbol_vdot_name_sym_at tag_ent_l

  | Camlline_for_symbol_uno_function_symbol_t.Let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in ->
      Camlline_for_symbol_uno_function_formula_t.Let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in tag_ent_l

  | Camlline_for_symbol_uno_function_symbol_t.Failwith_not_a_topson_leaf_et_symbol_make -> 
      Camlline_for_symbol_uno_function_formula_t.Failwith_not_a_topson_leaf_et_symbol_make tag_ent_l

  | Camlline_for_symbol_uno_function_symbol_t.Failwith_not_a_topson_notleaf_et_symbol_make -> 
      Camlline_for_symbol_uno_function_formula_t.Failwith_not_a_topson_notleaf_et_symbol_make tag_ent_l

  | Camlline_for_symbol_uno_function_symbol_t.With_failure_not_a_topson_leaf_et_symbol_arrow ->
      Camlline_for_symbol_uno_function_formula_t.With_failure_not_a_topson_leaf_et_symbol_arrow tag_ent_l

  | Camlline_for_symbol_uno_function_symbol_t.With_failure_not_a_topson_notleaf_et_symbol_arrow ->
      Camlline_for_symbol_uno_function_formula_t.With_failure_not_a_topson_notleaf_et_symbol_arrow tag_ent_l

(* current Ec *)
  | Camlline_for_symbol_uno_function_symbol_t.Pipe_esstring_arrow_es ->
      Camlline_for_symbol_uno_function_formula_t.Pipe_esstring_arrow_es tag_ent_l

  | Camlline_for_symbol_uno_function_symbol_t.Pipe_esstring_arrow_es_sarg ->
      Camlline_for_symbol_uno_function_formula_t.Pipe_esstring_arrow_es tag_ent_l

  | Camlline_for_symbol_uno_function_symbol_t.Pipe_string_arrow_ec ->
      Camlline_for_symbol_uno_function_formula_t.Pipe_string_arrow_ec tag_ent_l

;;

(** {6 Retrieving} *)

let retrieve tag_cuf =
  let soi_gro = Tag_v.sole_index_off_tag tag_cuf in
  let sym_cuf = Tag_v.entity_off_tag tag_cuf in
  make sym_cuf soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_symbol_uno_function_formula for_cuf =
  match for_cuf with
  | Camlline_for_symbol_uno_function_formula_t.Failwith_not_es_symbol tag_ent_l ->
      tag_ent_l

  | Camlline_for_symbol_uno_function_formula_t.Let_et_symbol_equal_et_symbol_tdot_et tag_ent_l ->
     tag_ent_l 

  | Camlline_for_symbol_uno_function_formula_t.Lpar_es_symbol_vdot_make_of_string_of_string_rpar tag_ent_l ->
     tag_ent_l

  | Camlline_for_symbol_uno_function_formula_t.Pipe_et_symbol_tdot_et_symbol_arrow_string tag_ent_l ->
     tag_ent_l 

  | Camlline_for_symbol_uno_function_formula_t.Pipe_esstring_arrow_es tag_ent_l ->
     tag_ent_l

  | Camlline_for_symbol_uno_function_formula_t.Pipe_esstring_arrow_es_sarg tag_ent_l ->
     tag_ent_l

  | Camlline_for_symbol_uno_function_formula_t.Pipe_string_arrow_ec tag_ent_l ->
     tag_ent_l

  | Camlline_for_symbol_uno_function_formula_t.Print_fatal_error_make_of_string_of_string tag_ent_l ->
     tag_ent_l

  | Camlline_for_symbol_uno_function_formula_t.Et_symbol_vdot_name_sym_at tag_ent_l ->
     tag_ent_l
	
  | Camlline_for_symbol_uno_function_formula_t.Let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in tag_ent_l ->
     tag_ent_l

  | Camlline_for_symbol_uno_function_formula_t.With_failure_not_es_symbol_arrow tag_ent_l ->
     tag_ent_l

  | Camlline_for_symbol_uno_function_formula_t.With_failure_not_a_topson_leaf_et_symbol_arrow tag_ent_l ->
     tag_ent_l 

  | Camlline_for_symbol_uno_function_formula_t.With_failure_not_a_topson_notleaf_et_symbol_arrow tag_ent_l ->
     tag_ent_l

  | Camlline_for_symbol_uno_function_formula_t.Failwith_not_a_topson_leaf_et_symbol_make tag_ent_l ->
     tag_ent_l

  | Camlline_for_symbol_uno_function_formula_t.Failwith_not_a_topson_notleaf_et_symbol_make tag_ent_l ->
     tag_ent_l

;;

let entity_tag_list_off_camlline_for_symbol_uno_function_tag tag_cuf =
  let for_cuf = retrieve tag_cuf in
  entity_tag_list_off_camlline_for_symbol_uno_function_formula for_cuf
;; 

(** {6 Iterating_for_formula_uno_function_symbol.} *)

let map f_of_tag_ent for_cuf = 
  let tag_ent_l = entity_tag_list_off_camlline_for_symbol_uno_function_formula for_cuf in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cuf = 
  let tag_ent_l = entity_tag_list_off_camlline_for_symbol_uno_function_formula for_cuf in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cuf_1 for_cuf_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_symbol_uno_function_formula for_cuf_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_symbol_uno_function_formula for_cuf_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cuf_1 for_cuf_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_symbol_uno_function_formula for_cuf_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_symbol_uno_function_formula for_cuf_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

