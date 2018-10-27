(** {3 Section_for_symbol_body_son_bare_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Section_for_symbol_body_son_bare_interface_v";
   "Current : FGNR:Section_for_symbol_body_son_bare_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ssb =
  match for_ssb with
  | Section_for_symbol_body_son_bare_formula_t.Make_ecstring_pattern_bare_for_symbol _ -> 
      Section_for_symbol_body_son_bare_symbol_t.Make_ecstring_pattern_bare_for_symbol

  | Section_for_symbol_body_son_bare_formula_t.Pipe_topson_symbol_type_bare_constructors _ -> 
      Section_for_symbol_body_son_bare_symbol_t.Pipe_topson_symbol_type_bare_constructors


(** {6 Naming_for_formula} *)

let name for_ssb = 
  let sym_ssb = symbol_of_formula for_ssb in
  Section_for_symbol_body_son_bare_symbol_v.name sym_ssb
;;
(* ***

let string_off for_ssb =
  let sym_ssb = symbol_of_formula for_ssb in
  Section_for_symbol_body_son_bare_symbol_v.string_off sym_ssb
;;

let longname for_ssb =
  Format.sprintf "Section_for_symbol_body_son_bare_formula_t.%s" 
    (String.capitalize (name for_ssb))

let fullname for_ssb =
  Format.sprintf "%s \"%s\"" (longname for_ssb) (string_off for_ssb)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_ssb soi_sec =
  let tag_ssb = Tag_v.make sym_ssb soi_sec in
  let oct_ssb = 
    Section_for_symbol_body_son_bare_tag_v.section_for_symbol_body_son_bare_octtup_off_section_for_symbol_body_son_bare_tag 
      tag_ssb 
  in
  let sym_gro_l = 
    Section_for_symbol_body_son_bare_interface_v.make_of_tuple 
      oct_ssb 
  in
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

let make sym_ssb soi_sec =
  let tag_gro_l = build_n_store sym_ssb soi_sec in

  match sym_ssb with 
  | Section_for_symbol_body_son_bare_symbol_t.Make_ecstring_pattern_bare_for_symbol -> 
      Section_for_symbol_body_son_bare_formula_t.Make_ecstring_pattern_bare_for_symbol tag_gro_l

  | Section_for_symbol_body_son_bare_symbol_t.Pipe_topson_symbol_type_bare_constructors -> 
      Section_for_symbol_body_son_bare_formula_t.Pipe_topson_symbol_type_bare_constructors tag_gro_l
;;

(** {6 Retrieving} *)

let retrieve tag_ssb =
  let soi_sec = Tag_v.sole_index_off_tag tag_ssb in
  let sym_ssb = Tag_v.entity_off_tag tag_ssb in
  make sym_ssb soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_symbol_body_son_bare_formula for_ssb =
  match for_ssb with
  | Section_for_symbol_body_son_bare_formula_t.Make_ecstring_pattern_bare_for_symbol tag_cap_l -> 
      tag_cap_l

  | Section_for_symbol_body_son_bare_formula_t.Pipe_topson_symbol_type_bare_constructors tag_cap_l -> 
      tag_cap_l
;;

let group_tag_list_off_section_for_symbol_body_son_bare_tag tag_ssb =
  let for_ssb = retrieve tag_ssb in
  group_tag_list_off_section_for_symbol_body_son_bare_formula for_ssb
;; 

let camlline_tag_list_off_section_for_symbol_body_son_bare_formula for_ssb =
  let tag_gro_l = 
    group_tag_list_off_section_for_symbol_body_son_bare_formula 
      for_ssb 
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

let camlline_tag_list_off_section_for_symbol_body_son_bare_tag tag_ssb =
  let for_ssb = retrieve tag_ssb in
  camlline_tag_list_off_section_for_symbol_body_son_bare_formula for_ssb
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_ssb = 
  let tag_gro_l = group_tag_list_off_section_for_symbol_body_son_bare_formula for_ssb in
  List.map f_of_tag_gro tag_gro_l
;;

let iter f_of_tag_gro for_ssb = 
  let tag_gro_l = group_tag_list_off_section_for_symbol_body_son_bare_formula for_ssb in
  List.iter f_of_tag_gro tag_gro_l ;;

let map2 f_of_tag_gro for_ssb_1 for_ssb_2  = 
  let tag_gro_l_1 = group_tag_list_off_section_for_symbol_body_son_bare_formula for_ssb_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_symbol_body_son_bare_formula for_ssb_2 in
  List.map2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2
;;

let iter2 f_of_tag_gro for_ssb_1 for_ssb_2 = 
  let tag_gro_l_1 = group_tag_list_off_section_for_symbol_body_son_bare_formula for_ssb_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_symbol_body_son_bare_formula for_ssb_2 in
  List.iter2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2 
;;

