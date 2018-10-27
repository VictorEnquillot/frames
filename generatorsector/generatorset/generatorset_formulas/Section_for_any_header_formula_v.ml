(** {3 Section_for_any_header_son_formula_v} *)

(** {3 Section_for_any_header_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Section_for_any_header_formula_v";
   "Needed-by : FGNR:Section_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sah = 
  match for_sah with
  | Section_for_any_header_formula_t.Section_for_any_header_constant_formula for_shc ->
      Section_for_any_header_symbol_t.Section_for_any_header_constant_symbol 
	(Section_for_any_header_constant_formula_v.symbol_of_formula for_shc)
	
  | Section_for_any_header_formula_t.Section_for_any_header_top_formula for_sht ->
      Section_for_any_header_symbol_t.Section_for_any_header_top_symbol 
	(Section_for_any_header_top_formula_v.symbol_of_formula for_sht)

;;

(** {6 Naming} *)

let name for_sah =
  let sym_sah = symbol_of_formula for_sah in
  Section_for_any_header_symbol_v.name sym_sah
;;
(* ***
let longname for_sah =
  let sym_sah = symbol_of_formula for_sah in
  Section_for_any_header_v.longname sym_sah
;;

let string_off for_sah =
  let sym_sah = symbol_of_formula for_sah in
  Section_for_any_header_v.string_off sym_sah
;;

let fullname for_sah =
  let sym_sah = symbol_of_formula for_sah in
  Section_for_any_header_v.longname sym_sah
;;
*** *)
(** {6 Making.} *)

let make sym_sah soi_sec =
  match sym_sah with   
  | Section_for_any_header_symbol_t.Section_for_any_header_constant_symbol sym_abc ->
      Section_for_any_header_formula_t.Section_for_any_header_constant_formula
	(Section_for_any_header_constant_formula_v.make sym_abc soi_sec)
	
  | Section_for_any_header_symbol_t.Section_for_any_header_top_symbol sym_abt ->
      Section_for_any_header_formula_t.Section_for_any_header_top_formula
	(Section_for_any_header_top_formula_v.make sym_abt soi_sec)

;;

(** {6 Retrieving.} *)

let retrieve tag_sah =
  let soi_sec = Tag_v.sole_index_off_tag tag_sah in
  let sym_sah = Tag_v.entity_off_tag tag_sah in
  make sym_sah soi_sec 
;; 

(** {6 Extracting.} *)

let group_tag_list_off_section_for_any_header_formula for_sah = 
  match for_sah with
  | Section_for_any_header_formula_t.Section_for_any_header_constant_formula for_shc ->
      Section_for_any_header_constant_formula_v.group_tag_list_off_section_for_any_header_constant_formula for_shc
	
  | Section_for_any_header_formula_t.Section_for_any_header_top_formula for_sht ->
      Section_for_any_header_top_formula_v.group_tag_list_off_section_for_any_header_top_formula for_sht

;;

let camlline_tag_list_off_section_for_any_header_formula for_sah =
  let tag_gro_l = 
    group_tag_list_off_section_for_any_header_formula 
      for_sah
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

let map f_of_tag_gro for_sss = 
  match for_sss with 
  | Section_for_any_header_formula_t.Section_for_any_header_constant_formula for_cc1 ->
        Section_for_any_header_constant_formula_v.map f_of_tag_gro for_cc1

  | Section_for_any_header_formula_t.Section_for_any_header_top_formula for_cc2 ->
        Section_for_any_header_top_formula_v.map f_of_tag_gro for_cc2
;;

let iter f_of_tag_gro for_sss = 
  match for_sss with 
  | Section_for_any_header_formula_t.Section_for_any_header_constant_formula for_cc1 ->
        Section_for_any_header_constant_formula_v.iter f_of_tag_gro for_cc1

  | Section_for_any_header_formula_t.Section_for_any_header_top_formula for_cc2 ->
        Section_for_any_header_top_formula_v.iter f_of_tag_gro for_cc2
;;

let map2 f_of_tag_gro for_sss1 for_sss2 = 
  match (for_sss1, for_sss2) with
  | (Section_for_any_header_formula_t.Section_for_any_header_constant_formula for_cc11, 
     Section_for_any_header_formula_t.Section_for_any_header_constant_formula for_cc12) ->
	 Section_for_any_header_constant_formula_v.map2 f_of_tag_gro for_cc11 for_cc12
	 
  | (Section_for_any_header_formula_t.Section_for_any_header_top_formula for_cc21,
     Section_for_any_header_formula_t.Section_for_any_header_top_formula for_cc22) ->
	 Section_for_any_header_top_formula_v.map2 f_of_tag_gro for_cc21 for_cc22
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Section type" 
	(Format.sprintf "couple (%s, %s)" (name for_sss1) (name for_sss2))
	"Check"
;;

let iter2 f_of_tag_gro for_sss1 for_sss2 = 
  match (for_sss1, for_sss2) with
  | (Section_for_any_header_formula_t.Section_for_any_header_constant_formula for_cc11, 
     Section_for_any_header_formula_t.Section_for_any_header_constant_formula for_cc12) ->
	 Section_for_any_header_constant_formula_v.iter2 f_of_tag_gro for_cc11 for_cc12
	 
  | (Section_for_any_header_formula_t.Section_for_any_header_top_formula for_cc21,
     Section_for_any_header_formula_t.Section_for_any_header_top_formula for_cc22) ->
	 Section_for_any_header_top_formula_v.iter2 f_of_tag_gro for_cc21 for_cc22

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Section type" 
	(Format.sprintf "couple (%s, %s)" (name for_sss1) (name for_sss2))
	"Check"
;;

