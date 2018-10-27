(** {3 Camlparagraph_for_any_comment_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Camlparagraph_for_any_comment_interface_v";
   "Current : FGNR:Camlparagraph_for_any_comment_formula_v";
   "Needed-by : FGNR:Camlparagraph_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cac =
  match for_cac with
  | Camlparagraph_for_any_comment_formula_t.Camlfile_title _ -> 
      Camlparagraph_for_any_comment_symbol_t.Camlfile_title

  | Camlparagraph_for_any_comment_formula_t.Empty _ -> 
      Camlparagraph_for_any_comment_symbol_t.Empty

  | Camlparagraph_for_any_comment_formula_t.Ending _ -> 
      Camlparagraph_for_any_comment_symbol_t.Ending

  | Camlparagraph_for_any_comment_formula_t.Item_title _ -> 
      Camlparagraph_for_any_comment_symbol_t.Item_title
;;

(** {6 Naming_for_formula} *)

let name for_cac = 
  let sym_cac = symbol_of_formula for_cac in
  Camlparagraph_for_any_comment_symbol_v.name sym_cac
;;
(* ***

let string_off for_cac =
  let sym_cac = symbol_of_formula for_cac in
  Camlparagraph_for_any_comment_symbol_v.string_off sym_cac
;;

let longname for_cac =
  Format.sprintf "Camlparagraph_for_any_comment_formula_t.%s" 
    (String.capitalize (name for_cac))

let fullname for_cac =
  Format.sprintf "%s \"%s\"" (longname for_cac) (string_off for_cac)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cac soi_cap =
  let sym_sec_l =
    Camlparagraph_for_any_comment_interface_v.make 
      sym_cac
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

let make sym_cac soi_sec =
  let tag_sec_l = build_n_store sym_cac soi_sec in

  match sym_cac with 
  | Camlparagraph_for_any_comment_symbol_t.Camlfile_title -> 
      Camlparagraph_for_any_comment_formula_t.Camlfile_title tag_sec_l

  | Camlparagraph_for_any_comment_symbol_t.Empty -> 
      Camlparagraph_for_any_comment_formula_t.Empty tag_sec_l

  | Camlparagraph_for_any_comment_symbol_t.Ending -> 
      Camlparagraph_for_any_comment_formula_t.Ending tag_sec_l

  | Camlparagraph_for_any_comment_symbol_t.Item_title -> 
      Camlparagraph_for_any_comment_formula_t.Item_title tag_sec_l
;;

(** {6 Retrieving} *)

let retrieve tag_cac =
  let soi_sec = Tag_v.sole_index_off_tag tag_cac in
  let sym_cac = Tag_v.entity_off_tag tag_cac in
  make sym_cac soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let section_tag_list_off_camlparagraph_for_any_comment_formula for_cac =
  match for_cac with
  | Camlparagraph_for_any_comment_formula_t.Camlfile_title tag_cap_l -> 
      tag_cap_l

  | Camlparagraph_for_any_comment_formula_t.Empty tag_cap_l -> 
      tag_cap_l

  | Camlparagraph_for_any_comment_formula_t.Ending tag_cap_l -> 
      tag_cap_l

  | Camlparagraph_for_any_comment_formula_t.Item_title tag_cap_l -> 
      tag_cap_l
;;

let section_tag_list_off_camlparagraph_for_any_comment_tag tag_cac =
  let for_cac = retrieve tag_cac in
  section_tag_list_off_camlparagraph_for_any_comment_formula for_cac
;; 

let camlline_tag_list_off_camlparagraph_for_any_comment_formula for_cac =
  let tag_sec_l = 
    section_tag_list_off_camlparagraph_for_any_comment_formula 
      for_cac 
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

let camlline_tag_list_off_camlparagraph_for_any_comment_tag tag_cac =
  let for_cac = retrieve tag_cac in
  camlline_tag_list_off_camlparagraph_for_any_comment_formula for_cac
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_sec for_cac = 
  let tag_sec_l = section_tag_list_off_camlparagraph_for_any_comment_formula for_cac in
  List.map f_of_tag_sec tag_sec_l
;;

let iter f_of_tag_sec for_cac = 
  let tag_sec_l = section_tag_list_off_camlparagraph_for_any_comment_formula for_cac in
  List.iter f_of_tag_sec tag_sec_l ;;

let map2 f_of_tag_sec for_cac_1 for_cac_2  = 
  let tag_sec_l_1 = section_tag_list_off_camlparagraph_for_any_comment_formula for_cac_1 in
  let tag_sec_l_2 = section_tag_list_off_camlparagraph_for_any_comment_formula for_cac_2 in
  List.map2 f_of_tag_sec tag_sec_l_1 tag_sec_l_2
;;

let iter2 f_of_tag_sec for_cac_1 for_cac_2 = 
  let tag_sec_l_1 = section_tag_list_off_camlparagraph_for_any_comment_formula for_cac_1 in
  let tag_sec_l_2 = section_tag_list_off_camlparagraph_for_any_comment_formula for_cac_2 in
  List.iter2 f_of_tag_sec tag_sec_l_1 tag_sec_l_2 
;;

