(** {3 Section_for_any_footer_son_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Section_for_any_footer_son_formula_v";
   "Needed-by : FGNR:";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Group_tag Datastructure expressing the Current formula";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sfs = 
  match for_sfs with
  | Section_for_any_footer_son_formula_t.Section_for_any_footer_son_empty ->
      Section_for_any_footer_son_symbol_t.Section_for_any_footer_son_empty
;;

(** {6 Naming} *)

let name for_sfs =
  let sym_sfs = symbol_of_formula for_sfs in
  Section_for_any_footer_son_symbol_v.name sym_sfs
;;
(* ***
let longname for_sfs =
  let sym_sfs = symbol_of_formula for_sfs in
  Section_for_any_footer_son_symbol_v.longname sym_sfs
;;

let string_off for_sfs =
  let sym_sfs = symbol_of_formula for_sfs in
  Section_for_any_footer_son_symbol_v.string_off sym_sfs
;;

let fullname for_sfs =
  let sym_sfs = symbol_of_formula for_sfs in
  Section_for_any_footer_son_symbol_v.longname sym_sfs
;;
*** *)

(** {6 Son_symbol Datastructure} *)

let interface sym_sfs =  (* Basic Formula read from dominset_formulas.set as a DAS *)
  match sym_sfs with 
  | Section_for_any_footer_son_symbol_t.Section_for_any_footer_son_empty ->
      []
;;

(** {6 Storing Son Datastructure by Sole_index} *)

let store_son_dss_datastructure sym_gro_l soi_gro_l =
  let gss_gro_l = List.map      (* Das_v.map *)
      Generatorset_symbol_v.generatorset_symbol_of_group_symbol
      sym_gro_l
  in

  List.iter2                    (* Das_v.iter2 *)
    Generatorset_symbol_by_sole_index_register_v.store
    soi_gro_l gss_gro_l;
;;

(** {6 Building and Storing Sons Tag Datastructure} *)

let builder_tag_datastructure sym_sfs soi_sec =
  let sym_gro_l = interface sym_sfs in
  let soi_gro_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_gro_l)
      soi_sec
  in
  List.map2 Tag_v.make sym_gro_l soi_gro_l 
;;

let store sym_sfs soi_sec =
  let tag_gro_l = builder_tag_datastructure sym_sfs soi_sec in
  let sym_gro_l = List.map Tag_v.entity_off_tag tag_gro_l in
  let soi_gro_l = List.map Tag_v.sole_index_off_tag tag_gro_l in

  store_son_dss_datastructure sym_gro_l soi_gro_l;
;;

(** {6 Making} *)

let make sym_sfs soi_sec =
  store sym_sfs soi_sec;

  match sym_sfs with 
  | Section_for_any_footer_son_symbol_t.Section_for_any_footer_son_empty ->
      Section_for_any_footer_son_formula_t.Section_for_any_footer_son_empty
;;

(** {6 Retrieving} *)

let retrieve tag_sfs = 
  let sym_sfs = Tag_v.entity_off_tag tag_sfs in
  let soi_sec = Tag_v.sole_index_off_tag tag_sfs in
  make sym_sfs soi_sec
;;

(** {6 Extracting.} *)

let group_tag_list_off_section_for_any_footer_son_formula for_sfs = 
  match for_sfs with
  | Section_for_any_footer_son_formula_t.Section_for_any_footer_son_empty ->
      []
;;

let camlline_tag_list_off_section_node_formula for_sfs =
  let tag_gro_l = 
    group_tag_list_off_section_for_any_footer_son_formula
      for_sfs
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

(** {6 Iterating.} *)

let map f for_sfs = 
  let tag_gro_l = group_tag_list_off_section_for_any_footer_son_formula for_sfs in
  List.map f tag_gro_l
;;

let iter f for_sfs = 
  let tag_gro_l = group_tag_list_off_section_for_any_footer_son_formula for_sfs in
  List.iter f tag_gro_l ;;

let map2 f for_sfs_1 for_sfs_2  = 
  let tag_gro_l_1 = group_tag_list_off_section_for_any_footer_son_formula for_sfs_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_any_footer_son_formula for_sfs_2 in
  List.map2 f tag_gro_l_1 tag_gro_l_2
;;

let iter2 f for_sfs_1 for_sfs_2 = 
  let tag_gro_l_1 = group_tag_list_off_section_for_any_footer_son_formula for_sfs_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_any_footer_son_formula for_sfs_2 in
  List.iter2 f tag_gro_l_1 tag_gro_l_2 
;;

