(** {3 Camlparagraph_stem_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Camlparagraph_stem_interface_v";
   "Current : FGNR:Camlparagraph_stem_formula_v";
   "Needed-by : FGNR:Camlparagraph_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sss =
  match for_sss with

;;

(** {6 Naming_for_formula} *)

let name for_sss = 
  let sym_sss = symbol_of_formula for_sss in
  Camlparagraph_stem_symbol_v.name sym_sss
;;
(* ***

let string_off for_sss =
  let sym_sss = symbol_of_formula for_sss in
  Camlparagraph_stem_symbol_v.string_off sym_sss
;;

let longname for_sss =
  Format.sprintf "Camlparagraph_stem_formula_t.%s" 
    (String.capitalize (name for_sss))

let fullname for_sss =
  Format.sprintf "%s \"%s\"" (longname for_sss) (string_off for_sss)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_sss soi_cap =
  let sym_sec_l = 
    Camlparagraph_stem_interface_v.make 
      sym_sss 
  in
  let soi_sec_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_sec_l)
      soi_cap
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_section_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_sec_l soi_sec_l;
  
  List.map2 Tag_v.make sym_sec_l soi_sec_l
;;

(** {6 Making_for_formula} *)

let make sym_sss soi_sec =
  let tag_sec_l = build_n_store sym_sss soi_sec in

  match sym_sss with 








;;

(** {6 Retrieving} *)

let retrieve tag_sss =
  let soi_sec = Tag_v.sole_index_off_tag tag_sss in
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  make sym_sss soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let section_tag_list_off_camlparagraph_stem_formula for_sss =
  match for_sss with


;;

let section_tag_list_off_camlparagraph_stem_tag tag_sss =
  let for_sss = retrieve tag_sss in
  section_tag_list_off_camlparagraph_stem_formula for_sss
;; 

let camlline_tag_list_off_camlparagraph_stem_formula for_sss =
  let tag_sec_l = 
    section_tag_list_off_camlparagraph_stem_formula 
      for_sss 
  in
  let for_sec_l = List.map
      Section_formula_v.retrieve 
      tag_sec_l 
  in
  let tag_cal_ll = List.map
      Section_formula_v.camlline_tag_list_off_section_formula 
      for_sec_l
  in 
  List.flatten tag_cal_ll
;;

let camlline_tag_list_off_camlparagraph_stem_tag tag_sss =
  let for_sss = retrieve tag_sss in
  camlline_tag_list_off_camlparagraph_stem_formula for_sss
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_sec for_sss = 
  let tag_sec_l = section_tag_list_off_camlparagraph_stem_formula for_sss in
  List.map f_of_tag_sec tag_sec_l
;;

let iter f_of_tag_sec for_sss = 
  let tag_sec_l = section_tag_list_off_camlparagraph_stem_formula for_sss in
  List.iter f_of_tag_sec tag_sec_l ;;

let map2 f_of_tag_sec for_sss_1 for_sss_2  = 
  let tag_sec_l_1 = section_tag_list_off_camlparagraph_stem_formula for_sss_1 in
  let tag_sec_l_2 = section_tag_list_off_camlparagraph_stem_formula for_sss_2 in
  List.map2 f_of_tag_sec tag_sec_l_1 tag_sec_l_2
;;

let iter2 f_of_tag_sec for_sss_1 for_sss_2 = 
  let tag_sec_l_1 = section_tag_list_off_camlparagraph_stem_formula for_sss_1 in
  let tag_sec_l_2 = section_tag_list_off_camlparagraph_stem_formula for_sss_2 in
  List.iter2 f_of_tag_sec tag_sec_l_1 tag_sec_l_2 
;;

