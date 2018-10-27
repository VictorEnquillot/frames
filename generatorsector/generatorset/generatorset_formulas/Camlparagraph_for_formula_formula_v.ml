(** {3 Camlparagraph_for_formula_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Camlparagraph_for_formula_interface_v";
   "Current : FGNR:Camlparagraph_for_formula_formula_v";
   "Needed-by : FGNR:Camlparagraph_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cff =
  match for_cff with
  | Camlparagraph_for_formula_formula_t.Camlparagraph_for_formula_let_formula for_cc1 ->
      Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
        (Camlparagraph_for_formula_let_formula_v.symbol_of_formula for_cc1)

  | Camlparagraph_for_formula_formula_t.Camlparagraph_for_formula_type _ ->
      Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_type
;;

(** {6 Naming_for_formula} *)

let name for_cff = 
  let sym_cff = symbol_of_formula for_cff in
  Camlparagraph_for_formula_symbol_v.name sym_cff
;;
(* ***

let string_off for_cff =
  let sym_cff = symbol_of_formula for_cff in
  Camlparagraph_for_formula_symbol_v.string_off sym_cff
;;

let longname for_cff =
  Format.sprintf "Camlparagraph_for_formula_formula_t.%s" 
    (String.capitalize (name for_cff))

let fullname for_cff =
  Format.sprintf "%s \"%s\"" (longname for_cff) (string_off for_cff)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cff soi_cap =
  let sym_sec_l = 
    Camlparagraph_for_formula_interface_v.make 
      sym_cff 
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

let make sym_cff soi_sec =
  match sym_cff with 

  | Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol sym_cc1 ->
      Camlparagraph_for_formula_formula_t.Camlparagraph_for_formula_let_formula 
        (Camlparagraph_for_formula_let_formula_v.make sym_cc1 soi_sec)

  | Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_type ->
      let tag_sec_l = build_n_store sym_cff soi_sec in
      Camlparagraph_for_formula_formula_t.Camlparagraph_for_formula_type tag_sec_l
;;

(** {6 Retrieving} *)

let retrieve tag_cff =
  let soi_sec = Tag_v.sole_index_off_tag tag_cff in
  let sym_cff = Tag_v.entity_off_tag tag_cff in
  make sym_cff soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let section_tag_list_off_camlparagraph_for_formula_formula for_cff =
  match for_cff with
  | Camlparagraph_for_formula_formula_t.Camlparagraph_for_formula_let_formula for_cc1 ->
        Camlparagraph_for_formula_let_formula_v.section_tag_list_off_camlparagraph_for_formula_let_formula for_cc1

  | Camlparagraph_for_formula_formula_t.Camlparagraph_for_formula_type tag_sec_l -> tag_sec_l

;;

let section_tag_list_off_camlparagraph_for_formula_tag tag_cff =
  let for_cff = retrieve tag_cff in
  section_tag_list_off_camlparagraph_for_formula_formula for_cff
;; 

let camlline_tag_list_off_camlparagraph_for_formula_formula for_cff =
  let tag_sec_l = 
    section_tag_list_off_camlparagraph_for_formula_formula 
      for_cff 
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

let camlline_tag_list_off_camlparagraph_for_formula_tag tag_cff =
  let for_cff = retrieve tag_cff in
  camlline_tag_list_off_camlparagraph_for_formula_formula for_cff
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_sec for_cff = 
  let tag_sec_l = section_tag_list_off_camlparagraph_for_formula_formula for_cff in
  List.map f_of_tag_sec tag_sec_l
;;

let iter f_of_tag_sec for_cff = 
  let tag_sec_l = section_tag_list_off_camlparagraph_for_formula_formula for_cff in
  List.iter f_of_tag_sec tag_sec_l ;;

let map2 f_of_tag_sec for_cff_1 for_cff_2  = 
  let tag_sec_l_1 = section_tag_list_off_camlparagraph_for_formula_formula for_cff_1 in
  let tag_sec_l_2 = section_tag_list_off_camlparagraph_for_formula_formula for_cff_2 in
  List.map2 f_of_tag_sec tag_sec_l_1 tag_sec_l_2
;;

let iter2 f_of_tag_sec for_cff_1 for_cff_2 = 
  let tag_sec_l_1 = section_tag_list_off_camlparagraph_for_formula_formula for_cff_1 in
  let tag_sec_l_2 = section_tag_list_off_camlparagraph_for_formula_formula for_cff_2 in
  List.iter2 f_of_tag_sec tag_sec_l_1 tag_sec_l_2 
;;

