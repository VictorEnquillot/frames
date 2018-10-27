(** {3 Section_for_formula_header_top_data_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Section_for_formula_header_top_data_interface_v";
   "Current : FGNR:Section_for_formula_header_top_data_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_std =
  match for_std with
  | Section_for_formula_header_top_data_formula_t.Let_data_tag_list_off_top_formula _ ->
     Section_for_formula_header_top_data_symbol_t.Let_data_tag_list_off_top_formula
  | Section_for_formula_header_top_data_formula_t.Let_data_tag_list_off_top_tag _ ->
     Section_for_formula_header_top_data_symbol_t.Let_data_tag_list_off_top_tag

;;

(** {6 Naming_for_formula} *)

let name for_std = 
  let sym_std = symbol_of_formula for_std in
  Section_for_formula_header_top_data_symbol_v.name sym_std
;;
(* ***

let string_off for_std =
  let sym_std = symbol_of_formula for_std in
  Section_for_formula_header_top_data_symbol_v.string_off sym_std
;;

let longname for_std =
  Format.sprintf "Section_for_formula_header_top_data_formula_t.%s" 
    (String.capitalize (name for_std))

let fullname for_std =
  Format.sprintf "%s \"%s\"" (longname for_std) (string_off for_std)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_std soi_sec =
  let sym_gro_l = Section_for_formula_header_top_data_interface_v.make sym_std in
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

let make sym_std soi_sec =
  let tag_gro_l = build_n_store sym_std soi_sec in
  match sym_std with 
  | Section_for_formula_header_top_data_symbol_t.Let_data_tag_list_off_top_formula ->
     Section_for_formula_header_top_data_formula_t.Let_data_tag_list_off_top_formula tag_gro_l
  | Section_for_formula_header_top_data_symbol_t.Let_data_tag_list_off_top_tag ->
     Section_for_formula_header_top_data_formula_t.Let_data_tag_list_off_top_tag tag_gro_l

;;

(** {6 Retrieving} *)

let retrieve tag_std =
  let soi_sec = Tag_v.sole_index_off_tag tag_std in
  let sym_std = Tag_v.entity_off_tag tag_std in
  make sym_std soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_formula_header_top_data_formula for_std =
  match for_std with
  | Section_for_formula_header_top_data_formula_t.Let_data_tag_list_off_top_formula tag_gro_l -> tag_gro_l
  | Section_for_formula_header_top_data_formula_t.Let_data_tag_list_off_top_tag tag_gro_l -> tag_gro_l

;;

let group_tag_list_off_section_for_formula_header_top_data_tag tag_std =
  let for_std = retrieve tag_std in
  group_tag_list_off_section_for_formula_header_top_data_formula for_std
;; 

let camlline_tag_list_off_section_for_formula_header_top_data_formula for_std =
  let tag_gro_l = 
    group_tag_list_off_section_for_formula_header_top_data_formula 
      for_std 
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

let camlline_tag_list_off_section_for_formula_header_top_data_tag tag_std =
  let for_std = retrieve tag_std in
  camlline_tag_list_off_section_for_formula_header_top_data_formula for_std
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_std = 
  let tag_gro_l = group_tag_list_off_section_for_formula_header_top_data_formula for_std in
  List.map f_of_tag_gro tag_gro_l
;;

let iter f_of_tag_gro for_std = 
  let tag_gro_l = group_tag_list_off_section_for_formula_header_top_data_formula for_std in
  List.iter f_of_tag_gro tag_gro_l ;;

let map2 f_of_tag_gro for_std_1 for_std_2  = 
  let tag_gro_l_1 = group_tag_list_off_section_for_formula_header_top_data_formula for_std_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_formula_header_top_data_formula for_std_2 in
  List.map2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2
;;

let iter2 f_of_tag_gro for_std_1 for_std_2 = 
  let tag_gro_l_1 = group_tag_list_off_section_for_formula_header_top_data_formula for_std_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_formula_header_top_data_formula for_std_2 in
  List.iter2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2 
;;

