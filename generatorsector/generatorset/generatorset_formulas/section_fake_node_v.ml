(** {3 Section_node_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Section_node_formula_v";
   "Needed-by : FGNR:Section_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlparagraph";
   "Builder_data : Camlline";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sss = 
  match for_sss with
  | Section_node_formula_t.Section_node_sub_1_formula for_cc1 ->
      Section_node_symbol_t.Section_node_sub_1_symbol
        (Section_node_sub_1_formula_v.symbol_of_formula for_cc1)

;;

(** {6 Naming_for_formula} *)

let name for_sss =
  let sym_sss = symbol_of_formula for_sss in
  Section_node_symbol_v.name sym_sss
;;
(* ***
let longname for_sss =
  let sym_sss = symbol_of_formula for_sss in
  Section_node_symbol_v.longname sym_sss
;;

let string_off for_sss =
  let sym_sss = symbol_of_formula for_sss in
  Section_node_symbol_v.string_off sym_sss
;;

let fullname for_sss =
  let sym_sss = symbol_of_formula for_sss in
  Section_node_symbol_v.longname sym_sss
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_sss soi_sec =
  match sym_sss with 
  | Section_node_symbol_t.Section_node_sub_1_symbol sym_cc1 ->
      Section_node_formula_t.Section_node_sub_1_formula 
        (Section_node_sub_1_formula_v.make sym_cc1 soi_sec)

;;

(** {6 Retrieving} *)

let retrieve tag_sss =
  let soi_sec = Tag_v.sole_index_off_tag tag_sss in
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  make sym_sss soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_node_formula for_sss =
  match for_sss with 
  | Section_node_formula_t.Section_node_sub_1_formula for_cc1 ->
        Section_node_sub_1_formula_v.group_tag_list_off_section_node_sub_1_formula for_cc1

;;

let group_tag_list_off_section_node_tag tag_sss =
  let for_sss = retrieve tag_sss in
  group_tag_list_off_section_node_formula for_sss
;;
    
let camlline_tag_list_off_section_node_formula for_sss =
  let tag_gro_l = 
    group_tag_list_off_section_node_formula 
      for_sss 
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

let camlline_tag_list_off_section_node_tag tag_sss =
  let for_sss = retrieve tag_sss in
  camlline_tag_list_off_section_node_formula for_sss
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_sss = 
  match for_sss with 
  | Section_node_formula_t.Section_node_sub_1_formula for_cc1 ->
        Section_node_sub_1_formula_v.map f_of_tag_gro for_cc1


;;

let iter f_of_tag_gro for_sss = 
  match for_sss with 
  | Section_node_formula_t.Section_node_sub_1_formula for_cc1 ->
        Section_node_sub_1_formula_v.iter f_of_tag_gro for_cc1

;;

let map2 f_of_tag_gro for_sss1 for_sss2 = 
  match (for_sss1, for_sss2) with
  | (Section_node_formula_t.Section_node_sub_1_formula for_cc11, 
     Section_node_formula_t.Section_node_sub_1_formula for_cc12) ->
	 Section_node_sub_1_formula_v.map2 f_of_tag_gro for_cc11 for_cc12
	 

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Section type" 
	(Format.sprintf "couple (%s, %s)" (name for_sss1) (name for_sss2))
	"Check"
;;

let iter2 f_of_tag_gro for_sss1 for_sss2 = 
  match (for_sss1, for_sss2) with
  | (Section_node_formula_t.Section_node_sub_1_formula for_cc11, 
     Section_node_formula_t.Section_node_sub_1_formula for_cc12) ->
	 Section_node_sub_1_formula_v.iter2 f_of_tag_gro for_cc11 for_cc12
	 

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Section type" 
	(Format.sprintf "couple (%s, %s)" (name for_sss1) (name for_sss2))
	"Check"
;;

