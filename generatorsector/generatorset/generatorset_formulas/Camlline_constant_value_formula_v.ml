(** {3 Camlline_constant_value_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_constant_value_formula_v";
   "Needed-by : FGNR:Camlline_constant_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a Stem type";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ccv =
  match for_ccv with
  | Camlline_constant_value_formula_t.Val_name_colon _ -> 
      Camlline_constant_value_symbol_t.Val_name_colon

  | Camlline_constant_value_formula_t.Val_print_colon _ -> 
      Camlline_constant_value_symbol_t.Val_print_colon

  | Camlline_constant_value_formula_t.Format_formatter_arrow _ -> 
      Camlline_constant_value_symbol_t.Format_formatter_arrow
;;

(** {6 Naming_for_formula} *)

let name for_ccv = 
  let sym_ccv = symbol_of_formula for_ccv in
  Camlline_constant_value_symbol_v.name sym_ccv
;;
(* ***

let string_off for_ccv =
  let sym_ccv = symbol_of_formula for_ccv in
  Camlline_constant_value_symbol_v.string_off sym_ccv
;;

let longname for_ccv =
  Format.sprintf "Camlline_constant_value_formula_t.%s" 
    (String.capitalize (name for_ccv))

let fullname for_ccv =
  Format.sprintf "%s \"%s\"" (longname for_ccv) (string_off for_ccv)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_ccv soi_cal =
  let tag_ccv = Tag_v.make sym_ccv soi_cal in
  let dec_ccv = 
    Camlline_constant_value_tag_v.camlline_constant_value_dectup_off_camlline_constant_value_tag 
      tag_ccv 
  in
  let sym_ent_l = Camlline_constant_value_interface_v.make dec_ccv soi_cal in
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

let make sym_ccv soi_cal =
  let tag_ent_l = build_n_store sym_ccv soi_cal in

  match sym_ccv with 
  | Camlline_constant_value_symbol_t.Val_name_colon -> 
      Camlline_constant_value_formula_t.Val_name_colon tag_ent_l

  | Camlline_constant_value_symbol_t.Val_print_colon -> 
      Camlline_constant_value_formula_t.Val_print_colon tag_ent_l

  | Camlline_constant_value_symbol_t.Format_formatter_arrow _ -> 
      Camlline_constant_value_formula_t.Format_formatter_arrow tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_ccv =
  let soi_gro = Tag_v.sole_index_off_tag tag_ccv in
  let sym_ccv = Tag_v.entity_off_tag tag_ccv in
  make sym_ccv soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_constant_value_formula for_ccv =
  match for_ccv with
  | Camlline_constant_value_formula_t.Val_name_colon tag_ent_l -> 
      tag_ent_l

  | Camlline_constant_value_formula_t.Val_print_colon tag_ent_l -> 
      tag_ent_l

  | Camlline_constant_value_formula_t.Format_formatter_arrow tag_ent_l -> 
      tag_ent_l
;;

let entity_tag_list_off_camlline_constant_value_tag tag_ccv =
  let for_ccv = retrieve tag_ccv in
  entity_tag_list_off_camlline_constant_value_formula for_ccv
;; 

(** {6 Iterating_for_formula_constant_value.} *)

let map f_of_tag_ent for_ccv = 
  let tag_ent_l = entity_tag_list_off_camlline_constant_value_formula for_ccv in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_ccv = 
  let tag_ent_l = entity_tag_list_off_camlline_constant_value_formula for_ccv in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_ccv_1 for_ccv_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_constant_value_formula for_ccv_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_constant_value_formula for_ccv_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_ccv_1 for_ccv_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_constant_value_formula for_ccv_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_constant_value_formula for_ccv_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

