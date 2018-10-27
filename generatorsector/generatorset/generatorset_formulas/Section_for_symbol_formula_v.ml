(** {3 Section_for_symbol_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Section_for_symbol_formula_v";
   "Needed-by : FGNR:Section_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sfs = 
  match for_sfs with
  | Section_for_symbol_formula_t.Section_for_symbol_header_formula for_fah ->
      Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
	(Section_for_symbol_header_formula_v.symbol_of_formula for_fah)
	
  | Section_for_symbol_formula_t.Section_for_symbol_body_formula for_fab ->
      Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
	(Section_for_symbol_body_formula_v.symbol_of_formula for_fab)
	
  | Section_for_symbol_formula_t.Section_for_symbol_footer_formula for_faf ->
      Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol
	(Section_for_symbol_footer_formula_v.symbol_of_formula for_faf)
;;

(** {6 Naming} *)

let name for_sfs =
  let sym_sfs = symbol_of_formula for_sfs in
  Section_for_symbol_symbol_v.name sym_sfs
;;

(* ***
let longname for_sfs =
  let sym_sfs = symbol_of_formula for_sfs in
  Section_for_symbol_symbol_v.longname sym_sfs
;;

let string_off for_sfs =
  let sym_sfs = symbol_of_formula for_sfs in
  Section_for_symbol_symbol_v.string_off sym_sfs
;;

let fullname for_sfs =
  let sym_sfs = symbol_of_formula for_sfs in
  Section_for_symbol_symbol_v.longname sym_sfs
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_sfs soi_sec =
  match sym_sfs with
  | Section_for_symbol_symbol_t.Section_for_symbol_header_symbol sym_sah ->
      Section_for_symbol_formula_t.Section_for_symbol_header_formula
	(Section_for_symbol_header_formula_v.make sym_sah soi_sec)

  | Section_for_symbol_symbol_t.Section_for_symbol_body_symbol sym_sab ->
      Section_for_symbol_formula_t.Section_for_symbol_body_formula
	(Section_for_symbol_body_formula_v.make sym_sab soi_sec)

  | Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol sym_saf ->
      Section_for_symbol_formula_t.Section_for_symbol_footer_formula
	(Section_for_symbol_footer_formula_v.make sym_saf soi_sec)
;;

(** {6 Retrieving.} *)

let retrieve tag_sfs =
  let soi_gro = Tag_v.sole_index_off_tag tag_sfs in
  let sym_sfs = Tag_v.entity_off_tag tag_sfs in
  make sym_sfs soi_gro 
;; 

(** {6 Extracting.} *)

let group_tag_list_off_section_for_symbol_formula for_sfs = 
  match for_sfs with
  | Section_for_symbol_formula_t.Section_for_symbol_header_formula for_sah ->
      Section_for_symbol_header_formula_v.group_tag_list_off_section_for_symbol_header_formula for_sah
	
  | Section_for_symbol_formula_t.Section_for_symbol_body_formula for_sab ->
      Section_for_symbol_body_formula_v.group_tag_list_off_section_for_symbol_body_formula for_sab
	
  | Section_for_symbol_formula_t.Section_for_symbol_footer_formula for_saf ->
      Section_for_symbol_footer_formula_v.group_tag_list_off_section_for_symbol_footer_formula for_saf
;;


let group_tag_list_off_section_for_symbol_tag tag_sec =
  let for_sec = retrieve tag_sec in
  group_tag_list_off_section_for_symbol_formula for_sec
;;
    
let camlline_tag_list_off_section_for_symbol_formula for_sfs =
  let tag_gro_l = 
    group_tag_list_off_section_for_symbol_formula 
      for_sfs
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

let camlline_tag_list_off_section_for_symbol_tag tag_sec =
  let for_sec = retrieve tag_sec in
  camlline_tag_list_off_section_for_symbol_formula for_sec
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_sfs = 
  match for_sfs with 
  | Section_for_symbol_formula_t.Section_for_symbol_header_formula for_cc1 ->
        Section_for_symbol_header_formula_v.map f_of_tag_gro for_cc1

  | Section_for_symbol_formula_t.Section_for_symbol_body_formula for_cc2 ->
        Section_for_symbol_body_formula_v.map f_of_tag_gro for_cc2

  | Section_for_symbol_formula_t.Section_for_symbol_footer_formula for_cc3 ->
        Section_for_symbol_footer_formula_v.map f_of_tag_gro for_cc3
;;

let iter f_of_tag_gro for_sfs = 
  match for_sfs with 
  | Section_for_symbol_formula_t.Section_for_symbol_header_formula for_cc1 ->
        Section_for_symbol_header_formula_v.iter f_of_tag_gro for_cc1

  | Section_for_symbol_formula_t.Section_for_symbol_body_formula for_cc2 ->
        Section_for_symbol_body_formula_v.iter f_of_tag_gro for_cc2

  | Section_for_symbol_formula_t.Section_for_symbol_footer_formula for_cc3 ->
        Section_for_symbol_footer_formula_v.iter f_of_tag_gro for_cc3

;;

let map2 f_of_tag_gro for_sfs1 for_sfs2 = 
  match (for_sfs1, for_sfs2) with
  | (Section_for_symbol_formula_t.Section_for_symbol_header_formula for_cc11, 
     Section_for_symbol_formula_t.Section_for_symbol_header_formula for_cc12) ->
	 Section_for_symbol_header_formula_v.map2 f_of_tag_gro for_cc11 for_cc12
	 
  | (Section_for_symbol_formula_t.Section_for_symbol_body_formula for_cc21,
     Section_for_symbol_formula_t.Section_for_symbol_body_formula for_cc22) ->
	 Section_for_symbol_body_formula_v.map2 f_of_tag_gro for_cc21 for_cc22

  | (Section_for_symbol_formula_t.Section_for_symbol_footer_formula for_cc31, 
     Section_for_symbol_formula_t.Section_for_symbol_footer_formula for_cc32) ->
	 Section_for_symbol_footer_formula_v.map2 f_of_tag_gro for_cc31 for_cc32

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Section type" 
	(Format.sprintf "couple (%s, %s)" (name for_sfs1) (name for_sfs2))
	"Check"
;;

let iter2 f_of_tag_gro for_sfs1 for_sfs2 = 
  match (for_sfs1, for_sfs2) with
  | (Section_for_symbol_formula_t.Section_for_symbol_header_formula for_cc11, 
     Section_for_symbol_formula_t.Section_for_symbol_header_formula for_cc12) ->
	 Section_for_symbol_header_formula_v.iter2 f_of_tag_gro for_cc11 for_cc12
	 
  | (Section_for_symbol_formula_t.Section_for_symbol_body_formula for_cc21,
     Section_for_symbol_formula_t.Section_for_symbol_body_formula for_cc22) ->
	 Section_for_symbol_body_formula_v.iter2 f_of_tag_gro for_cc21 for_cc22

  | (Section_for_symbol_formula_t.Section_for_symbol_footer_formula for_cc31, 
     Section_for_symbol_formula_t.Section_for_symbol_footer_formula for_cc32) ->
	 Section_for_symbol_footer_formula_v.iter2 f_of_tag_gro for_cc31 for_cc32

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Section type" 
	(Format.sprintf "couple (%s, %s)" (name for_sfs1) (name for_sfs2))
	"Check"
;;
