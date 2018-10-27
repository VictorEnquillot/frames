(** {3 Camlline_for_formula_trio_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_trio_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cft = 
  match for_cft with
  | Camlline_for_formula_trio_formula_t.Camlline_for_formula_trio_son_top_builder_formula for_cc1 ->
      Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_son_top_builder_symbol
        (Camlline_for_formula_trio_son_top_builder_formula_v.symbol_of_formula for_cc1)

  | Camlline_for_formula_trio_formula_t.Camlline_for_formula_trio_son_top_data_formula for_cc1 ->
      Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_son_top_data_symbol
        (Camlline_for_formula_trio_son_top_data_formula_v.symbol_of_formula for_cc1)

  | Camlline_for_formula_trio_formula_t.Camlline_for_formula_trio_top_builder_data_formula for_cc2 ->
      Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_top_builder_data_symbol
        (Camlline_for_formula_trio_top_builder_data_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_formula_trio_formula_t.Camlline_for_formula_trio_top_main_builder_formula for_cc3 ->
      Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_top_main_builder_symbol
        (Camlline_for_formula_trio_top_main_builder_formula_v.symbol_of_formula for_cc3)

;;

(** {6 Naming_for_formula} *)

let name for_cft =
  let sym_cft = symbol_of_formula for_cft in
  Camlline_for_formula_trio_symbol_v.name sym_cft
;;
(* ***
let longname for_cft =
  let sym_cft = symbol_of_formula for_cft in
  Camlline_for_formula_trio_symbol_v.longname sym_cft
;;

let string_off for_cft =
  let sym_cft = symbol_of_formula for_cft in
  Camlline_for_formula_trio_symbol_v.string_off sym_cft
;;

let fullname for_cft =
  let sym_cft = symbol_of_formula for_cft in
  Camlline_for_formula_trio_symbol_v.longname sym_cft
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_cft soi_cal =
  match sym_cft with 
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_son_top_builder_symbol sym_cc1 ->
      Camlline_for_formula_trio_formula_t.Camlline_for_formula_trio_son_top_builder_formula 
        (Camlline_for_formula_trio_son_top_builder_formula_v.make sym_cc1 soi_cal)

  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_son_top_data_symbol sym_cc1 ->
      Camlline_for_formula_trio_formula_t.Camlline_for_formula_trio_son_top_data_formula 
        (Camlline_for_formula_trio_son_top_data_formula_v.make sym_cc1 soi_cal)

  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_top_builder_data_symbol sym_cc2 ->
      Camlline_for_formula_trio_formula_t.Camlline_for_formula_trio_top_builder_data_formula 
        (Camlline_for_formula_trio_top_builder_data_formula_v.make sym_cc2 soi_cal)

  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_top_main_builder_symbol sym_cc3 ->
      Camlline_for_formula_trio_formula_t.Camlline_for_formula_trio_top_main_builder_formula 
        (Camlline_for_formula_trio_top_main_builder_formula_v.make sym_cc3 soi_cal)
;;

(** {6 Retrieving} *)

let retrieve tag_cft =
  let soi_cal = Tag_v.sole_index_off_tag tag_cft in
  let sym_cft = Tag_v.entity_off_tag tag_cft in
  make sym_cft soi_cal 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_trio_formula for_cft =
  match for_cft with 
  | Camlline_for_formula_trio_formula_t.Camlline_for_formula_trio_son_top_builder_formula for_cc1 ->
      Camlline_for_formula_trio_son_top_builder_formula_v.entity_tag_list_off_camlline_for_formula_trio_son_top_builder_formula for_cc1
	
  | Camlline_for_formula_trio_formula_t.Camlline_for_formula_trio_son_top_data_formula for_cc1 ->
      Camlline_for_formula_trio_son_top_data_formula_v.entity_tag_list_off_camlline_for_formula_trio_son_top_data_formula for_cc1
	
  | Camlline_for_formula_trio_formula_t.Camlline_for_formula_trio_top_builder_data_formula for_cc2 ->
      Camlline_for_formula_trio_top_builder_data_formula_v.entity_tag_list_off_camlline_for_formula_trio_top_builder_data_formula for_cc2
	
  | Camlline_for_formula_trio_formula_t.Camlline_for_formula_trio_top_main_builder_formula for_cc3 ->
      Camlline_for_formula_trio_top_main_builder_formula_v.entity_tag_list_off_camlline_for_formula_trio_top_main_builder_formula for_cc3
;;

let entity_tag_list_off_camlline_for_formula_trio_tag tag_cft =
  let for_cft = retrieve tag_cft in
  entity_tag_list_off_camlline_for_formula_trio_formula for_cft
;;

(** {6 Iterating_for_formula} *)

let map f for_cft = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_trio_formula for_cft in
  List.map f tag_ent_l
;;

let iter f for_cft = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_trio_formula for_cft in
  List.iter f tag_ent_l ;;

let map2 f for_cft_1 for_cft_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_trio_formula for_cft_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_trio_formula for_cft_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_cft_1 for_cft_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_trio_formula for_cft_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_trio_formula for_cft_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

