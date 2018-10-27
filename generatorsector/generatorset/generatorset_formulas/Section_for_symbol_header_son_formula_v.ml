(** {3 Section_for_symbol_header_son_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Section_for_symbol_header_son_interface_v";
   "Current : FGNR:Section_for_symbol_header_son_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Group_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_shs =
  match for_shs with
  | Section_for_symbol_header_son_formula_t.Let_is_topson_bare _ -> 
      Section_for_symbol_header_son_symbol_t.Let_is_topson_bare

  | Section_for_symbol_header_son_formula_t.Let_is_topson_ofstring _ -> 
      Section_for_symbol_header_son_symbol_t.Let_is_topson_ofstring
;;

(** {6 Naming_for_formula} *)

let name for_shs = 
  let sym_shs = symbol_of_formula for_shs in
  Section_for_symbol_header_son_symbol_v.name sym_shs
;;
(* ***

let string_off for_shs =
  let sym_shs = symbol_of_formula for_shs in
  Section_for_symbol_header_son_symbol_v.string_off sym_shs
;;

let longname for_shs =
  Format.sprintf "Section_for_symbol_header_son_formula_t.%s" 
    (String.capitalize (name for_shs))

let fullname for_shs =
  Format.sprintf "%s \"%s\"" (longname for_shs) (string_off for_shs)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_shs soi_sec =
  let sym_gro_l = 
    Section_for_symbol_header_son_interface_v.make 
      sym_shs 
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

let make sym_shs soi_gro =
  let tag_gro_l = build_n_store sym_shs soi_gro in

  match sym_shs with 
  | Section_for_symbol_header_son_symbol_t.Let_is_topson_bare -> 
      Section_for_symbol_header_son_formula_t.Let_is_topson_bare tag_gro_l

  | Section_for_symbol_header_son_symbol_t.Let_is_topson_ofstring -> 
      Section_for_symbol_header_son_formula_t.Let_is_topson_ofstring tag_gro_l
;;

(** {6 Retrieving} *)

let retrieve tag_shs =
  let soi_gro = Tag_v.sole_index_off_tag tag_shs in
  let sym_shs = Tag_v.entity_off_tag tag_shs in
  make sym_shs soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_symbol_header_son_formula for_shs =
  match for_shs with
  | Section_for_symbol_header_son_formula_t.Let_is_topson_bare tag_gro_l -> 
      tag_gro_l

  | Section_for_symbol_header_son_formula_t.Let_is_topson_ofstring tag_gro_l -> 
      tag_gro_l
;;

let group_tag_list_off_section_for_symbol_header_son_tag tag_shs =
  let for_shs = retrieve tag_shs in
  group_tag_list_off_section_for_symbol_header_son_formula for_shs
;; 

(** {6 Iterating_for_formula_for_symbol_header_son.} *)

let map f_of_tag_gro for_shs = 
  let tag_gro_l = group_tag_list_off_section_for_symbol_header_son_formula for_shs in
  List.map f_of_tag_gro tag_gro_l
;;

let iter f_of_tag_gro for_shs = 
  let tag_gro_l = group_tag_list_off_section_for_symbol_header_son_formula for_shs in
  List.iter f_of_tag_gro tag_gro_l ;;

let map2 f_of_tag_gro for_shs_1 for_shs_2  = 
  let tag_gro_l_1 = group_tag_list_off_section_for_symbol_header_son_formula for_shs_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_symbol_header_son_formula for_shs_2 in
  List.map2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2
;;

let iter2 f_of_tag_gro for_shs_1 for_shs_2 = 
  let tag_gro_l_1 = group_tag_list_off_section_for_symbol_header_son_formula for_shs_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_symbol_header_son_formula for_shs_2 in
  List.iter2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2 
;;

