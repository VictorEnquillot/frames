(** {3 Section_for_any_header_constant_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Section_for_any_header_constant_formula_v";
   "Needed-by : FGNR:Section_for_any_header_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Group_tag Datastructure expressing the Current formula";
   "Remark : It is a Stem type";
   "Improve : ";
   "Example : let nam_cod = ...";                                  (* Group_header *)
   "Example : type e_symbol =";                                    (* Group_header *)
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let symbol_of_formula for_shc = 
  match for_shc with
  | Section_for_any_header_constant_formula_t.Let_documentation _ ->
      Section_for_any_header_constant_symbol_t.Let_documentation

  | Section_for_any_header_constant_formula_t.Let_nam_cod_equal _ ->
      Section_for_any_header_constant_symbol_t.Let_nam_cod_equal

  | Section_for_any_header_constant_formula_t.Type_et_any_equal _ ->
      Section_for_any_header_constant_symbol_t.Type_et_any_equal
;;

(** {6 Naming} *)

let name for_shc =
  let sym_shc = symbol_of_formula for_shc in
  Section_for_any_header_constant_symbol_v.name sym_shc
;;
(* ***
let longname for_shc =
  let sym_shc = symbol_of_formula for_shc in
  Section_for_any_header_constant_symbol_v.longname sym_shc
;;

let string_off for_shc =
  let sym_shc = symbol_of_formula for_shc in
  Section_for_any_header_constant_symbol_v.string_off sym_shc
;;

let fullname for_shc =
  let sym_shc = symbol_of_formula for_shc in
  Section_for_any_header_constant_symbol_v.longname sym_shc
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_shc soi_sec =
  let sym_gro_l = Section_for_any_header_constant_interface_v.make sym_shc in
  let soi_gro_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_gro_l)
      soi_sec
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_group_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_gro_l soi_gro_l;
  
  List.map2 Tag_v.make sym_gro_l soi_gro_l
;;

(** {6 Making_for_formula} *)

let make sym_shc soi_sec =
  let tag_gro_l = build_n_store sym_shc soi_sec in

  match sym_shc with 
  | Section_for_any_header_constant_symbol_t.Let_documentation ->
      Section_for_any_header_constant_formula_t.Let_documentation tag_gro_l

  | Section_for_any_header_constant_symbol_t.Let_nam_cod_equal ->
      Section_for_any_header_constant_formula_t.Let_nam_cod_equal tag_gro_l

  | Section_for_any_header_constant_symbol_t.Type_et_any_equal ->
      Section_for_any_header_constant_formula_t.Type_et_any_equal tag_gro_l
;;

(** {6 Retrieving} *)

let retrieve tag_shc = 
  let sym_shc = Tag_v.entity_off_tag tag_shc in
  let soi_sec = Tag_v.sole_index_off_tag tag_shc in
  make sym_shc soi_sec
;;

(** {6 Extracting.} *)

let group_tag_list_off_section_for_any_header_constant_formula for_shc = 
  match for_shc with
  | Section_for_any_header_constant_formula_t.Let_documentation tag_gro_l ->
      tag_gro_l

  | Section_for_any_header_constant_formula_t.Let_nam_cod_equal tag_gro_l ->
      tag_gro_l

  | Section_for_any_header_constant_formula_t.Type_et_any_equal tag_gro_l ->
      tag_gro_l
;;

let group_tag_list_off_section_for_any_header_constant_tag tag_shc =
  let for_shc = retrieve tag_shc in
  group_tag_list_off_section_for_any_header_constant_formula for_shc
;; 

let camlline_tag_list_off_section_for_any_header_constant_formula for_shc =
  let tag_gro_l = 
    group_tag_list_off_section_for_any_header_constant_formula
      for_shc 
  in
  let for_gro_l = List.map
      Group_formula_v.retrieve 
      tag_gro_l 
  in 
  let tag_cal_ll = List.map 
      Group_formula_v.camlline_tag_list_off_group_formula
      for_gro_l
  in
  List.flatten tag_cal_ll
;;

let camlline_tag_list_off_section_for_any_header_constant_tag tag_shc =
  let for_shc = retrieve tag_shc in
  camlline_tag_list_off_section_for_any_header_constant_formula for_shc
;; 

(** {6 Iterating_for_formula} *)

let map f for_shc = 
  let tag_gro_l = group_tag_list_off_section_for_any_header_constant_formula for_shc in
  List.map f tag_gro_l
;;

let iter f for_shc = 
  let tag_gro_l = group_tag_list_off_section_for_any_header_constant_formula for_shc in
  List.iter f tag_gro_l ;;

let map2 f for_shc_1 for_shc_2  = 
  let tag_gro_l_1 = group_tag_list_off_section_for_any_header_constant_formula for_shc_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_any_header_constant_formula for_shc_2 in
  List.map2 f tag_gro_l_1 tag_gro_l_2
;;

let iter2 f for_shc_1 for_shc_2 = 
  let tag_gro_l_1 = group_tag_list_off_section_for_any_header_constant_formula for_shc_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_any_header_constant_formula for_shc_2 in
  List.iter2 f tag_gro_l_1 tag_gro_l_2 
;;
