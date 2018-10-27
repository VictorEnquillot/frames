(** {3 Camlparagraph_for_symbol_let_abbreviate_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Camlparagraph_for_symbol_let_abbreviate_interface_v";
   "Current : FGNR:Camlparagraph_for_symbol_let_abbreviate_formula_v";
   "Needed-by : FGNR:Camlparagraph_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cla =
  match for_cla with
  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_inancestorself _ -> 
      Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_inancestorself

  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_topson_ofstring _ -> 
      Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_ofstring

  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_topson_basicnullary _ -> 
      Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_basicnullary

  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_topson_bare _ -> 
      Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_bare

  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_grandson_ofstring _ -> 
      Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_ofstring

  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_grandson_basicnullary _ -> 
      Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_basicnullary

  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_grandson_bare _ -> 
      Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_bare

  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_inself _ -> 
      Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_inself
;;

(** {6 Naming_for_formula} *)

let name for_cla = 
  let sym_cla = symbol_of_formula for_cla in
  Camlparagraph_for_symbol_let_abbreviate_symbol_v.name sym_cla
;;
(* ***

let string_off for_cla =
  let sym_cla = symbol_of_formula for_cla in
  Camlparagraph_for_symbol_let_abbreviate_symbol_v.string_off sym_cla
;;

let longname for_cla =
  Format.sprintf "Camlparagraph_for_symbol_let_abbreviate_formula_t.%s" 
    (String.capitalize (name for_cla))

let fullname for_cla =
  Format.sprintf "%s \"%s\"" (longname for_cla) (string_off for_cla)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cla soi_cap =
  let sym_sec_l = 
    Camlparagraph_for_symbol_let_abbreviate_interface_v.make 
      sym_cla
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

let make sym_cla soi_sec =
  let tag_sec_l = build_n_store sym_cla soi_sec in

  match sym_cla with 
  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_inancestorself -> 
      Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_inancestorself tag_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_ofstring -> 
      Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_topson_ofstring tag_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_basicnullary -> 
      Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_topson_basicnullary tag_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_bare -> 
      Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_topson_bare tag_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_ofstring -> 
      Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_grandson_ofstring tag_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_basicnullary -> 
      Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_grandson_basicnullary tag_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_bare -> 
      Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_grandson_bare tag_sec_l

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_inself -> 
      Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_inself tag_sec_l

;;

(** {6 Retrieving} *)

let retrieve tag_cla =
  let soi_sec = Tag_v.sole_index_off_tag tag_cla in
  let sym_cla = Tag_v.entity_off_tag tag_cla in
  make sym_cla soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let section_tag_list_off_camlparagraph_for_symbol_let_abbreviate_formula for_cla =
  match for_cla with
  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_inancestorself tag_cap_l -> 
      tag_cap_l

  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_topson_ofstring tag_cap_l -> 
      tag_cap_l

  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_topson_basicnullary tag_cap_l -> 
      tag_cap_l

  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_topson_bare tag_cap_l -> 
      tag_cap_l

  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_grandson_ofstring tag_cap_l -> 
      tag_cap_l

  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_grandson_basicnullary tag_cap_l -> 
      tag_cap_l

  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_grandson_bare tag_cap_l -> 
      tag_cap_l

  | Camlparagraph_for_symbol_let_abbreviate_formula_t.Let_abbreviate_inself tag_cap_l -> 
      tag_cap_l

;;

let section_tag_list_off_camlparagraph_for_symbol_let_abbreviate_tag tag_cla =
  let for_cla = retrieve tag_cla in
  section_tag_list_off_camlparagraph_for_symbol_let_abbreviate_formula for_cla
;; 

let camlline_tag_list_off_camlparagraph_for_symbol_let_abbreviate_formula for_cla =
  let tag_sec_l = 
    section_tag_list_off_camlparagraph_for_symbol_let_abbreviate_formula 
      for_cla 
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

let camlline_tag_list_off_camlparagraph_for_symbol_let_abbreviate_tag tag_cla =
  let for_cla = retrieve tag_cla in
  camlline_tag_list_off_camlparagraph_for_symbol_let_abbreviate_formula for_cla
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_sec for_cla = 
  let tag_sec_l = section_tag_list_off_camlparagraph_for_symbol_let_abbreviate_formula for_cla in
  List.map f_of_tag_sec tag_sec_l
;;

let iter f_of_tag_sec for_cla = 
  let tag_sec_l = section_tag_list_off_camlparagraph_for_symbol_let_abbreviate_formula for_cla in
  List.iter f_of_tag_sec tag_sec_l ;;

let map2 f_of_tag_sec for_cla_1 for_cla_2  = 
  let tag_sec_l_1 = section_tag_list_off_camlparagraph_for_symbol_let_abbreviate_formula for_cla_1 in
  let tag_sec_l_2 = section_tag_list_off_camlparagraph_for_symbol_let_abbreviate_formula for_cla_2 in
  List.map2 f_of_tag_sec tag_sec_l_1 tag_sec_l_2
;;

let iter2 f_of_tag_sec for_cla_1 for_cla_2 = 
  let tag_sec_l_1 = section_tag_list_off_camlparagraph_for_symbol_let_abbreviate_formula for_cla_1 in
  let tag_sec_l_2 = section_tag_list_off_camlparagraph_for_symbol_let_abbreviate_formula for_cla_2 in
  List.iter2 f_of_tag_sec tag_sec_l_1 tag_sec_l_2 
;;

