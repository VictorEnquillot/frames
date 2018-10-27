(** {3 Section_stem_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Section_stem_formula_v";
   "Needed-by : FGNR:";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Group_tag Datastructure expressing the Current formula";
   "Remark : It is a Stem type";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name for_sss = 
  match for_sss with
  | Section_stem_formula_t.Leaf_1 _ ->
      "leaf_1"
;;

let longname for_sss =
  Format.sprintf "Section_stem_t.%s" 
    (String.capitalize (name for_sss))

let string_off for_sss = "";;

let fullname for_sss =
  Format.sprintf "%s \"%s\"" (longname for_sss) (string_off for_sss)
;;


(** {6 Son_symbol Datastructure} *)

let interface sym_sss soi_sec =  (* Basic Formula read from dominset_formulas.set as a DAS *)
  let tag_sss = Tag_v.make sym_sss soi_sec in
  let oct_sss =
    Section_stem_tag_v.section_stem_octtup_off_section_stem_tag
      tag_sss
  in
  match sym_sss with 
  | Section_stem_symbol_t.Leaf_1 ->
      Tools_fgnr_v.son_symbol_repeated_list_of_octtup_of_group_symbol oct_sss Group_symbol_v.leaf_1
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

let builder_tag_datastructure sym_sss soi_sec =
  let sym_gro_l = interface sym_sss soi_sec in
  let soi_gro_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_gro_l)
      soi_sec
  in
  List.map2 Tag_v.make sym_gro_l soi_gro_l 
;;

let store sym_sss soi_sec =
  let tag_gro_l = builder_tag_datastructure sym_sss soi_sec in
  let sym_gro_l = List.map Tag_v.entity_off_tag tag_gro_l in
  let soi_gro_l = List.map Tag_v.sole_index_off_tag tag_gro_l in

  store_son_dss_datastructure sym_gro_l soi_gro_l;
;;

(** {6 Making} *)

let make sym_sss soi_sec =
  store sym_sss soi_sec;
  let tag_gro_l = builder_tag_datastructure sym_sss soi_sec in

  match sym_sss with 
  | Section_stem_symbol_t.Leaf_1 ->
      Section_stem_formula_t.Leaf_1 tag_gro_l
;;

(** {6 Retrieving} *)

let retrieve tag_sss = 
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  let soi_sec = Tag_v.sole_index_off_tag tag_sss in
  make sym_sss soi_sec
;;

(** {6 Extracting.} *)

let group_tag_list_off_section_stem_formula for_sss = 
  match for_sss with
  | Section_stem_formula_t.Leaf_1 tag_gro_l ->
      tag_gro_l
;;

let camlline_tag_list_off_section_stem_formula for_sss =
  let tag_gro_l = 
    group_tag_list_off_section_stem_formula 
      for_sss
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

let map f for_sss = 
  let tag_gro_l = group_tag_list_off_section_stem_formula for_sss in
  List.map f tag_gro_l
;;

let iter f for_sss = 
  let tag_gro_l = group_tag_list_off_section_stem_formula for_sss in
  List.iter f tag_gro_l ;;

let map2 f for_sss_1 for_sss_2  = 
  let tag_gro_l_1 = group_tag_list_off_section_stem_formula for_sss_1 in
  let tag_gro_l_2 = group_tag_list_off_section_stem_formula for_sss_2 in
  List.map2 f tag_gro_l_1 tag_gro_l_2
;;

let iter2 f for_sss_1 for_sss_2 = 
  let tag_gro_l_1 = group_tag_list_off_section_stem_formula for_sss_1 in
  let tag_gro_l_2 = group_tag_list_off_section_stem_formula for_sss_2 in
  List.iter2 f tag_gro_l_1 tag_gro_l_2 
;;

