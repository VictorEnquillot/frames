(** {3 Section_for_symbol_body_son_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Section_for_symbol_body_formula_v";
   "Needed-by : FGNR:Section_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ssb = 
  match for_ssb with
  | Section_for_symbol_body_formula_t.Section_for_symbol_body_top_formula for_sbt ->
      Section_for_symbol_body_symbol_t.Section_for_symbol_body_top_symbol
	(Section_for_symbol_body_top_formula_v.symbol_of_formula for_sbt)

  | Section_for_symbol_body_formula_t.Section_for_symbol_body_son_formula for_sbs ->
      Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol
	(Section_for_symbol_body_son_formula_v.symbol_of_formula for_sbs)

  | Section_for_symbol_body_formula_t.Section_for_symbol_body_son_top_formula for_sst ->
      Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
	(Section_for_symbol_body_son_top_formula_v.symbol_of_formula for_sst)

  | Section_for_symbol_body_formula_t.Section_for_symbol_body_current_son_top_formula for_sst ->
      Section_for_symbol_body_symbol_t.Section_for_symbol_body_current_son_top_symbol
	(Section_for_symbol_body_current_son_top_formula_v.symbol_of_formula for_sst)
;;

(** {6 Naming} *)

let name for_ssb =
  let sym_ssb = symbol_of_formula for_ssb in
  Section_for_symbol_body_symbol_v.name sym_ssb
;;
(* ***
let longname for_ssb =
  let sym_ssb = symbol_of_formula for_ssb in
  Section_for_symbol_body_symbol_v.longname sym_ssb
;;

let string_off for_ssb =
  let sym_ssb = symbol_of_formula for_ssb in
  Section_for_symbol_body_symbol_v.string_off sym_ssb
;;

let fullname for_ssb =
  let sym_ssb = symbol_of_formula for_ssb in
  Section_for_symbol_body_symbol_v.longname sym_ssb
;;
*** *)

(** {6 Making.} *)

let make sym_ssb soi_sec =
  match sym_ssb with   
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_top_symbol sym_abt ->
      Section_for_symbol_body_formula_t.Section_for_symbol_body_top_formula
      (Section_for_symbol_body_top_formula_v.make sym_abt soi_sec)

  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol sym_abs ->
      Section_for_symbol_body_formula_t.Section_for_symbol_body_son_formula
	(Section_for_symbol_body_son_formula_v.make sym_abs soi_sec)

  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol sym_bst ->
      Section_for_symbol_body_formula_t.Section_for_symbol_body_son_top_formula
	(Section_for_symbol_body_son_top_formula_v.make sym_bst soi_sec)

  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_current_son_top_symbol sym_cst ->
      Section_for_symbol_body_formula_t.Section_for_symbol_body_current_son_top_formula
	(Section_for_symbol_body_current_son_top_formula_v.make sym_cst soi_sec)
;;

(** {6 Retrieving.} *)

let retrieve tag_ssb =
  let soi_gro = Tag_v.sole_index_off_tag tag_ssb in
  let sym_ssb = Tag_v.entity_off_tag tag_ssb in
  make sym_ssb soi_gro 
;; 

(** {6 Extracting.} *)

let group_tag_list_off_section_for_symbol_body_formula for_ssb = 
  match for_ssb with
  | Section_for_symbol_body_formula_t.Section_for_symbol_body_top_formula for_sbt ->
      Section_for_symbol_body_top_formula_v.group_tag_list_off_section_for_symbol_body_top_formula for_sbt

  | Section_for_symbol_body_formula_t.Section_for_symbol_body_son_formula for_sbs ->
      Section_for_symbol_body_son_formula_v.group_tag_list_off_section_for_symbol_body_son_formula for_sbs

  | Section_for_symbol_body_formula_t.Section_for_symbol_body_son_top_formula for_sst ->
      Section_for_symbol_body_son_top_formula_v.group_tag_list_off_section_for_symbol_body_son_top_formula for_sst

  | Section_for_symbol_body_formula_t.Section_for_symbol_body_current_son_top_formula for_sst ->
      Section_for_symbol_body_current_son_top_formula_v.group_tag_list_off_section_for_symbol_body_current_son_top_formula for_sst
;;

let camlline_tag_list_off_section_for_symbol_body_formula for_ssb =
  let tag_gro_l = 
    group_tag_list_off_section_for_symbol_body_formula 
      for_ssb
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

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_ssb = 
  match for_ssb with 
  | Section_for_symbol_body_formula_t.Section_for_symbol_body_top_formula for_cc1 ->
        Section_for_symbol_body_top_formula_v.map f_of_tag_gro for_cc1

  | Section_for_symbol_body_formula_t.Section_for_symbol_body_son_formula for_cc2 ->
        Section_for_symbol_body_son_formula_v.map f_of_tag_gro for_cc2

  | Section_for_symbol_body_formula_t.Section_for_symbol_body_son_top_formula for_cc3 ->
        Section_for_symbol_body_son_top_formula_v.map f_of_tag_gro for_cc3

  | Section_for_symbol_body_formula_t.Section_for_symbol_body_current_son_top_formula for_cc4 ->
        Section_for_symbol_body_current_son_top_formula_v.map f_of_tag_gro for_cc4





;;

let iter f_of_tag_gro for_ssb = 
  match for_ssb with 
  | Section_for_symbol_body_formula_t.Section_for_symbol_body_top_formula for_cc1 ->
        Section_for_symbol_body_top_formula_v.iter f_of_tag_gro for_cc1

  | Section_for_symbol_body_formula_t.Section_for_symbol_body_son_formula for_cc2 ->
        Section_for_symbol_body_son_formula_v.iter f_of_tag_gro for_cc2

  | Section_for_symbol_body_formula_t.Section_for_symbol_body_son_top_formula for_cc3 ->
        Section_for_symbol_body_son_top_formula_v.iter f_of_tag_gro for_cc3

  | Section_for_symbol_body_formula_t.Section_for_symbol_body_current_son_top_formula for_cc4 ->
        Section_for_symbol_body_current_son_top_formula_v.iter f_of_tag_gro for_cc4






;;

let map2 f_of_tag_gro for_ssb1 for_ssb2 = 
  match (for_ssb1, for_ssb2) with
  | (Section_for_symbol_body_formula_t.Section_for_symbol_body_top_formula for_cc11, 
     Section_for_symbol_body_formula_t.Section_for_symbol_body_top_formula for_cc12) ->
	 Section_for_symbol_body_top_formula_v.map2 f_of_tag_gro for_cc11 for_cc12
	 
  | (Section_for_symbol_body_formula_t.Section_for_symbol_body_son_formula for_cc21,
     Section_for_symbol_body_formula_t.Section_for_symbol_body_son_formula for_cc22) ->
	 Section_for_symbol_body_son_formula_v.map2 f_of_tag_gro for_cc21 for_cc22

  | (Section_for_symbol_body_formula_t.Section_for_symbol_body_son_top_formula for_cc31, 
     Section_for_symbol_body_formula_t.Section_for_symbol_body_son_top_formula for_cc32) ->
	 Section_for_symbol_body_son_top_formula_v.map2 f_of_tag_gro for_cc31 for_cc32
	 
  | (Section_for_symbol_body_formula_t.Section_for_symbol_body_current_son_top_formula for_cc41,
     Section_for_symbol_body_formula_t.Section_for_symbol_body_current_son_top_formula for_cc42) ->
	 Section_for_symbol_body_current_son_top_formula_v.map2 f_of_tag_gro for_cc41 for_cc42

	 

	 

	 
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Section type" 
	(Format.sprintf "couple (%s, %s)" (name for_ssb1) (name for_ssb2))
	"Check"
;;

let iter2 f_of_tag_gro for_ssb1 for_ssb2 = 
  match (for_ssb1, for_ssb2) with
  | (Section_for_symbol_body_formula_t.Section_for_symbol_body_top_formula for_cc11, 
     Section_for_symbol_body_formula_t.Section_for_symbol_body_top_formula for_cc12) ->
	 Section_for_symbol_body_top_formula_v.iter2 f_of_tag_gro for_cc11 for_cc12
	 
  | (Section_for_symbol_body_formula_t.Section_for_symbol_body_son_formula for_cc21,
     Section_for_symbol_body_formula_t.Section_for_symbol_body_son_formula for_cc22) ->
	 Section_for_symbol_body_son_formula_v.iter2 f_of_tag_gro for_cc21 for_cc22

  | (Section_for_symbol_body_formula_t.Section_for_symbol_body_son_top_formula for_cc31, 
     Section_for_symbol_body_formula_t.Section_for_symbol_body_son_top_formula for_cc32) ->
	 Section_for_symbol_body_son_top_formula_v.iter2 f_of_tag_gro for_cc31 for_cc32
	 
  | (Section_for_symbol_body_formula_t.Section_for_symbol_body_current_son_top_formula for_cc41,
     Section_for_symbol_body_formula_t.Section_for_symbol_body_current_son_top_formula for_cc42) ->
	 Section_for_symbol_body_current_son_top_formula_v.iter2 f_of_tag_gro for_cc41 for_cc42

	 

	 

	 
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Section type" 
	(Format.sprintf "couple (%s, %s)" (name for_ssb1) (name for_ssb2))
	"Check"
;;

