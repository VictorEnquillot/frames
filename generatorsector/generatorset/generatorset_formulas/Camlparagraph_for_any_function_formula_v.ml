(** {3 Camlparagraph_for_any_function_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Camlparagraph_for_any_function_interface_v";
   "Current : FGNR:Camlparagraph_for_any_function_formula_v";
   "Needed-by : FGNR:Camlparagraph_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_caf =
  match for_caf with

  | Camlparagraph_for_any_function_formula_t.Let_nam_cod_equal _ -> 
      Camlparagraph_for_any_function_symbol_t.Let_nam_cod_equal
;;
(* ***

let string_off for_caf =
  let sym_caf = symbol_of_formula for_caf in
  Camlparagraph_for_any_function_symbol_v.string_off sym_caf
;;

let longname for_caf =
  Format.sprintf "Camlparagraph_for_any_function_formula_t.%s" 
    (String.capitalize (name for_caf))

let fullname for_caf =
  Format.sprintf "%s \"%s\"" (longname for_caf) (string_off for_caf)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_caf soi_cap =
  let sym_sec_l = 
    Camlparagraph_for_any_function_interface_v.make 
      sym_caf 
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

let make sym_caf soi_sec =
  let tag_sec_l = build_n_store sym_caf soi_sec in

  match sym_caf with 

  | Camlparagraph_for_any_function_symbol_t.Let_nam_cod_equal -> 
      Camlparagraph_for_any_function_formula_t.Let_nam_cod_equal tag_sec_l
;;

(** {6 Retrieving} *)

let retrieve tag_caf =
  let soi_sec = Tag_v.sole_index_off_tag tag_caf in
  let sym_caf = Tag_v.entity_off_tag tag_caf in
  make sym_caf soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let section_tag_list_off_camlparagraph_for_any_function_formula for_caf =
  match for_caf with
  | Camlparagraph_for_any_function_formula_t.Let_nam_cod_equal tag_cap_l -> 
      tag_cap_l
;;

let section_tag_list_off_camlparagraph_for_any_function_tag tag_caf =
  let for_caf = retrieve tag_caf in
  section_tag_list_off_camlparagraph_for_any_function_formula for_caf
;; 

let camlline_tag_list_off_camlparagraph_for_any_function_formula for_caf =
  let tag_sec_l = 
    section_tag_list_off_camlparagraph_for_any_function_formula 
      for_caf 
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

let camlline_tag_list_off_camlparagraph_for_any_function_tag tag_caf =
  let for_caf = retrieve tag_caf in
  camlline_tag_list_off_camlparagraph_for_any_function_formula for_caf
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_sec for_caf = 
  let tag_sec_l = section_tag_list_off_camlparagraph_for_any_function_formula for_caf in
  List.map f_of_tag_sec tag_sec_l
;;

let iter f_of_tag_sec for_caf = 
  let tag_sec_l = section_tag_list_off_camlparagraph_for_any_function_formula for_caf in
  List.iter f_of_tag_sec tag_sec_l ;;

let map2 f_of_tag_sec for_caf_1 for_caf_2  = 
  let tag_sec_l_1 = section_tag_list_off_camlparagraph_for_any_function_formula for_caf_1 in
  let tag_sec_l_2 = section_tag_list_off_camlparagraph_for_any_function_formula for_caf_2 in
  List.map2 f_of_tag_sec tag_sec_l_1 tag_sec_l_2
;;

let iter2 f_of_tag_sec for_caf_1 for_caf_2 = 
  let tag_sec_l_1 = section_tag_list_off_camlparagraph_for_any_function_formula for_caf_1 in
  let tag_sec_l_2 = section_tag_list_off_camlparagraph_for_any_function_formula for_caf_2 in
  List.iter2 f_of_tag_sec tag_sec_l_1 tag_sec_l_2 
;;

