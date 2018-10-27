(** {3 Camlparagraph_for_symbol_let_mixed_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Camlparagraph_for_symbol_let_mixed_interface_v";
   "Current : FGNR:Camlparagraph_for_symbol_let_mixed_formula_v";
   "Needed-by : FGNR:Camlparagraph_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_clm =
  match for_clm with
  | Camlparagraph_for_symbol_let_mixed_formula_t.Let_fullname_argument_equal_function_for_symbol _ -> 
      Camlparagraph_for_symbol_let_mixed_symbol_t.Let_fullname_argument_equal_function_for_symbol

  | Camlparagraph_for_symbol_let_mixed_formula_t.Let_make_argument_equal_function_for_symbol _ -> 
      Camlparagraph_for_symbol_let_mixed_symbol_t.Let_make_argument_equal_function_for_symbol

  | Camlparagraph_for_symbol_let_mixed_formula_t.Let_name_argument_equal_function_for_symbol _ -> 
      Camlparagraph_for_symbol_let_mixed_symbol_t.Let_name_argument_equal_function_for_symbol

  | Camlparagraph_for_symbol_let_mixed_formula_t.Let_symbol_list_argument_equal_function_for_symbol _ -> 
      Camlparagraph_for_symbol_let_mixed_symbol_t.Let_symbol_list_argument_equal_function_for_symbol

;;

(** {6 Naming_for_formula} *)

let name for_clm = 
  let sym_clm = symbol_of_formula for_clm in
  Camlparagraph_for_symbol_let_mixed_symbol_v.name sym_clm
;;
(* ***

let string_off for_clm =
  let sym_clm = symbol_of_formula for_clm in
  Camlparagraph_for_symbol_let_mixed_symbol_v.string_off sym_clm
;;

let longname for_clm =
  Format.sprintf "Camlparagraph_for_symbol_let_mixed_formula_t.%s" 
    (String.capitalize (name for_clm))

let fullname for_clm =
  Format.sprintf "%s \"%s\"" (longname for_clm) (string_off for_clm)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_clm soi_cap =
  let sym_sec_l = 
    Camlparagraph_for_symbol_let_mixed_interface_v.make
      sym_clm
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

let make sym_clm soi_sec =
  let tag_sec_l = build_n_store sym_clm soi_sec in

  match sym_clm with 
  | Camlparagraph_for_symbol_let_mixed_symbol_t.Let_fullname_argument_equal_function_for_symbol -> 
      Camlparagraph_for_symbol_let_mixed_formula_t.Let_fullname_argument_equal_function_for_symbol tag_sec_l

  | Camlparagraph_for_symbol_let_mixed_symbol_t.Let_make_argument_equal_function_for_symbol -> 
      Camlparagraph_for_symbol_let_mixed_formula_t.Let_make_argument_equal_function_for_symbol tag_sec_l

  | Camlparagraph_for_symbol_let_mixed_symbol_t.Let_name_argument_equal_function_for_symbol -> 
      Camlparagraph_for_symbol_let_mixed_formula_t.Let_name_argument_equal_function_for_symbol tag_sec_l

  | Camlparagraph_for_symbol_let_mixed_symbol_t.Let_symbol_list_argument_equal_function_for_symbol -> 
      Camlparagraph_for_symbol_let_mixed_formula_t.Let_symbol_list_argument_equal_function_for_symbol tag_sec_l
;;

(** {6 Retrieving} *)

let retrieve tag_clm =
  let soi_sec = Tag_v.sole_index_off_tag tag_clm in
  let sym_clm = Tag_v.entity_off_tag tag_clm in
  make sym_clm soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let section_tag_list_off_camlparagraph_for_symbol_let_mixed_formula for_clm =
  match for_clm with
  | Camlparagraph_for_symbol_let_mixed_formula_t.Let_fullname_argument_equal_function_for_symbol tag_cap_l -> 
      tag_cap_l

  | Camlparagraph_for_symbol_let_mixed_formula_t.Let_make_argument_equal_function_for_symbol tag_cap_l -> 
      tag_cap_l

  | Camlparagraph_for_symbol_let_mixed_formula_t.Let_name_argument_equal_function_for_symbol tag_cap_l -> 
      tag_cap_l

  | Camlparagraph_for_symbol_let_mixed_formula_t.Let_symbol_list_argument_equal_function_for_symbol tag_cap_l -> 
      tag_cap_l

;;

let section_tag_list_off_camlparagraph_for_symbol_let_mixed_tag tag_clm =
  let for_clm = retrieve tag_clm in
  section_tag_list_off_camlparagraph_for_symbol_let_mixed_formula for_clm
;; 

let camlline_tag_list_off_camlparagraph_for_symbol_let_mixed_formula for_clm =
  let tag_sec_l = 
    section_tag_list_off_camlparagraph_for_symbol_let_mixed_formula 
      for_clm 
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

let camlline_tag_list_off_camlparagraph_for_symbol_let_mixed_tag tag_clm =
  let for_clm = retrieve tag_clm in
  camlline_tag_list_off_camlparagraph_for_symbol_let_mixed_formula for_clm
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_sec for_clm = 
  let tag_sec_l = section_tag_list_off_camlparagraph_for_symbol_let_mixed_formula for_clm in
  List.map f_of_tag_sec tag_sec_l
;;

let iter f_of_tag_sec for_clm = 
  let tag_sec_l = section_tag_list_off_camlparagraph_for_symbol_let_mixed_formula for_clm in
  List.iter f_of_tag_sec tag_sec_l ;;

let map2 f_of_tag_sec for_clm_1 for_clm_2  = 
  let tag_sec_l_1 = section_tag_list_off_camlparagraph_for_symbol_let_mixed_formula for_clm_1 in
  let tag_sec_l_2 = section_tag_list_off_camlparagraph_for_symbol_let_mixed_formula for_clm_2 in
  List.map2 f_of_tag_sec tag_sec_l_1 tag_sec_l_2
;;

let iter2 f_of_tag_sec for_clm_1 for_clm_2 = 
  let tag_sec_l_1 = section_tag_list_off_camlparagraph_for_symbol_let_mixed_formula for_clm_1 in
  let tag_sec_l_2 = section_tag_list_off_camlparagraph_for_symbol_let_mixed_formula for_clm_2 in
  List.iter2 f_of_tag_sec tag_sec_l_1 tag_sec_l_2 
;;

