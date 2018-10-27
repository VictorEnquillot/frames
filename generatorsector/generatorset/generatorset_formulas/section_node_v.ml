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
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sss = 
  match for_sss with
  | Section_node_formula_t.Section_node_sub_1_formula for_cc1 ->
      Section_node_symbol_t.Section_node_sub_1_symbol
        (Section_node_sub_1_formula_v.symbol_of_formula for_cc1)

  | Section_node_formula_t.Section_node_sub_2_formula for_cc2 ->
      Section_node_symbol_t.Section_node_sub_2_symbol
        (Section_node_sub_2_formula_v.symbol_of_formula for_cc2)

  | Section_node_formula_t.Section_node_sub_3_formula for_cc3 ->
      Section_node_symbol_t.Section_node_sub_3_symbol
        (Section_node_sub_3_formula_v.symbol_of_formula for_cc3)

  | Section_node_formula_t.Section_node_sub_4_formula for_cc4 ->
      Section_node_symbol_t.Section_node_sub_4_symbol
        (Section_node_sub_4_formula_v.symbol_of_formula for_cc4)

  | Section_node_formula_t.Section_node_sub_5_formula for_cc5 ->
      Section_node_symbol_t.Section_node_sub_5_symbol
        (Section_node_sub_5_formula_v.symbol_of_formula for_cc5)

  | Section_node_formula_t.Section_node_sub_6_formula for_cc6 ->
      Section_node_symbol_t.Section_node_sub_6_symbol
        (Section_node_sub_6_formula_v.symbol_of_formula for_cc6)

  | Section_node_formula_t.Section_node_sub_7_formula for_cc7 ->
      Section_node_symbol_t.Section_node_sub_7_symbol
        (Section_node_sub_7_formula_v.symbol_of_formula for_cc7)

  | Section_node_formula_t.Section_node_sub_8_formula for_cc8 ->
      Section_node_symbol_t.Section_node_sub_8_symbol
        (Section_node_sub_8_formula_v.symbol_of_formula for_cc8)

  | Section_node_formula_t.Section_node_sub_9_formula for_cc9 ->
      Section_node_symbol_t.Section_node_sub_9_symbol
        (Section_node_sub_9_formula_v.symbol_of_formula for_cc9)

  | Section_node_formula_t.Section_node_sub10_formula for_cc10 ->
      Section_node_symbol_t.Section_node_sub10_symbol
        (Section_node_sub10_formula_v.symbol_of_formula for_cc10)

  | Section_node_formula_t.Section_node_sub11_formula for_cc11 ->
      Section_node_symbol_t.Section_node_sub11_symbol
        (Section_node_sub11_formula_v.symbol_of_formula for_cc11)
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

  | Section_node_symbol_t.Section_node_sub_2_symbol sym_cc2 ->
      Section_node_formula_t.Section_node_sub_2_formula 
        (Section_node_sub_2_formula_v.make sym_cc2 soi_sec)

  | Section_node_symbol_t.Section_node_sub_3_symbol sym_cc3 ->
      Section_node_formula_t.Section_node_sub_3_formula 
        (Section_node_sub_3_formula_v.make sym_cc3 soi_sec)

  | Section_node_symbol_t.Section_node_sub_4_symbol sym_cc4 ->
      Section_node_formula_t.Section_node_sub_4_formula 
        (Section_node_sub_4_formula_v.make sym_cc4 soi_sec)

  | Section_node_symbol_t.Section_node_sub_5_symbol sym_cc5 ->
      Section_node_formula_t.Section_node_sub_5_formula 
        (Section_node_sub_5_formula_v.make sym_cc5 soi_sec)

  | Section_node_symbol_t.Section_node_sub_6_symbol sym_cc6 ->
      Section_node_formula_t.Section_node_sub_6_formula 
        (Section_node_sub_6_formula_v.make sym_cc6 soi_sec)

  | Section_node_symbol_t.Section_node_sub_7_symbol sym_cc7 ->
      Section_node_formula_t.Section_node_sub_7_formula 
        (Section_node_sub_7_formula_v.make sym_cc7 soi_sec)

  | Section_node_symbol_t.Section_node_sub_8_symbol sym_cc8 ->
      Section_node_formula_t.Section_node_sub_8_formula 
        (Section_node_sub_8_formula_v.make sym_cc8 soi_sec)

  | Section_node_symbol_t.Section_node_sub_9_symbol sym_cc9 ->
      Section_node_formula_t.Section_node_sub_9_formula 
        (Section_node_sub_9_formula_v.make sym_cc9 soi_sec)

  | Section_node_symbol_t.Section_node_sub10_symbol sym_cc10 ->
      Section_node_formula_t.Section_node_sub10_formula 
        (Section_node_sub_10_formula_v.make sym_cc10 soi_sec)

  | Section_node_symbol_t.Section_node_sub_11_symbol sym_cc11 ->
      Section_node_formula_t.Section_node_sub_11_formula 
        (Section_node_sub_11_formula_v.make sym_cc11 soi_sec)

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

  | Section_node_formula_t.Section_node_sub_2_formula for_cc2 ->
        Section_node_sub_2_formula_v.group_tag_list_off_section_node_sub_2_formula for_cc2

  | Section_node_formula_t.Section_node_sub_3_formula for_cc3 ->
        Section_node_sub_3_formula_v.group_tag_list_off_section_node_sub_3_formula for_cc3

  | Section_node_formula_t.Section_node_sub_4_formula for_cc4 ->
        Section_node_sub_4_formula_v.group_tag_list_off_section_node_sub_4_formula for_cc4

  | Section_node_formula_t.Section_node_sub_5_formula for_cc5 ->
        Section_node_sub_5_formula_v.group_tag_list_off_section_node_sub_5_formula for_cc5

  | Section_node_formula_t.Section_node_sub_6_formula for_cc6 ->
        Section_node_sub_6_formula_v.group_tag_list_off_section_node_sub_6_formula for_cc6

  | Section_node_formula_t.Section_node_sub_7_formula for_cc7 ->
        Section_node_sub_7_formula_v.group_tag_list_off_section_node_sub_7_formula for_cc7

  | Section_node_formula_t.Section_node_sub_8_formula for_cc8 ->
        Section_node_sub_8_formula_v.group_tag_list_off_section_node_sub_8_formula for_cc8

  | Section_node_formula_t.Section_node_sub_9_formula for_cc9 ->
        Section_node_sub_9_formula_v.group_tag_list_off_section_node_sub_9_formula for_cc9

  | Section_node_formula_t.Section_node_sub10_formula for_cc10 ->
        Section_node_sub10_formula_v.group_tag_list_off_section_node_sub10_formula for_cc10

  | Section_node_formula_t.Section_node_sub11_formula for_cc11 ->
        Section_node_sub11_formula_v.group_tag_list_off_section_node_sub11_formula for_cc11

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

  | Section_node_formula_t.Section_node_sub_2_formula for_cc2 ->
        Section_node_sub_2_formula_v.map f_of_tag_gro for_cc2

  | Section_node_formula_t.Section_node_sub_3_formula for_cc3 ->
        Section_node_sub_3_formula_v.map f_of_tag_gro for_cc3

  | Section_node_formula_t.Section_node_sub_4_formula for_cc4 ->
        Section_node_sub_4_formula_v.map f_of_tag_gro for_cc4

  | Section_node_formula_t.Section_node_sub_5_formula for_cc5 ->
        Section_node_sub_5_formula_v.map f_of_tag_gro for_cc5

  | Section_node_formula_t.Section_node_sub_6_formula for_cc6 ->
        Section_node_sub_6_formula_v.map f_of_tag_gro for_cc6

  | Section_node_formula_t.Section_node_sub_7_formula for_cc7 ->
        Section_node_sub_7_formula_v.map f_of_tag_gro for_cc7

  | Section_node_formula_t.Section_node_sub_8_formula for_cc8 ->
        Section_node_sub_8_formula_v.map f_of_tag_gro for_cc8

  | Section_node_formula_t.Section_node_sub_9_formula for_cc9 ->
        Section_node_sub_9_formula_v.map f_of_tag_gro for_cc9

  | Section_node_formula_t.Section_node_sub10_formula for_cc10 ->
        Section_node_sub10_formula_v.map f_of_tag_gro for_cc10

  | Section_node_formula_t.Section_node_sub11_formula for_cc11 ->
        Section_node_sub11_formula_v.map f_of_tag_gro for_cc11

;;

let iter f_of_tag_gro for_sss = 
  match for_sss with 
  | Section_node_formula_t.Section_node_sub_1_formula for_cc1 ->
        Section_node_sub_1_formula_v.iter f_of_tag_gro for_cc1

  | Section_node_formula_t.Section_node_sub_2_formula for_cc2 ->
        Section_node_sub_2_formula_v.iter f_of_tag_gro for_cc2

  | Section_node_formula_t.Section_node_sub_3_formula for_cc3 ->
        Section_node_sub_3_formula_v.iter f_of_tag_gro for_cc3

  | Section_node_formula_t.Section_node_sub_4_formula for_cc4 ->
        Section_node_sub_4_formula_v.iter f_of_tag_gro for_cc4

  | Section_node_formula_t.Section_node_sub_5_formula for_cc5 ->
        Section_node_sub_5_formula_v.iter f_of_tag_gro for_cc5

  | Section_node_formula_t.Section_node_sub_6_formula for_cc6 ->
        Section_node_sub_6_formula_v.iter f_of_tag_gro for_cc6

  | Section_node_formula_t.Section_node_sub_7_formula for_cc7 ->
        Section_node_sub_7_formula_v.iter f_of_tag_gro for_cc7

  | Section_node_formula_t.Section_node_sub_8_formula for_cc8 ->
        Section_node_sub_8_formula_v.iter f_of_tag_gro for_cc8

  | Section_node_formula_t.Section_node_sub_9_formula for_cc9 ->
        Section_node_sub_9_formula_v.iter f_of_tag_gro for_cc9

  | Section_node_formula_t.Section_node_sub10_formula for_cc10 ->
        Section_node_sub10_formula_v.iter f_of_tag_gro for_cc10

  | Section_node_formula_t.Section_node_sub11_formula for_cc11 ->
        Section_node_sub11_formula_v.iter f_of_tag_gro for_cc11

;;

let map2 f_of_tag_gro for_sss1 for_sss2 = 
  match (for_sss1, for_sss2) with
  | (Section_node_formula_t.Section_node_sub_1_formula for_cc11, 
     Section_node_formula_t.Section_node_sub_1_formula for_cc12) ->
	 Section_node_sub_1_formula_v.map2 f_of_tag_gro for_cc11 for_cc12
	 
  | (Section_node_formula_t.Section_node_sub_2_formula for_cc21,
     Section_node_formula_t.Section_node_sub_2_formula for_cc22) ->
	 Section_node_sub_2_formula_v.map2 f_of_tag_gro for_cc21 for_cc22

  | (Section_node_formula_t.Section_node_sub_3_formula for_cc31, 
     Section_node_formula_t.Section_node_sub_3_formula for_cc32) ->
	 Section_node_sub_3_formula_v.map2 f_of_tag_gro for_cc31 for_cc32
	 
  | (Section_node_formula_t.Section_node_sub_4_formula for_cc41,
     Section_node_formula_t.Section_node_sub_4_formula for_cc42) ->
	 Section_node_sub_4_formula_v.map2 f_of_tag_gro for_cc41 for_cc42

  | (Section_node_formula_t.Section_node_sub_5_formula for_cc51, 
     Section_node_formula_t.Section_node_sub_5_formula for_cc52) ->
	 Section_node_sub_5_formula_v.map2 f_of_tag_gro for_cc51 for_cc52
	 
  | (Section_node_formula_t.Section_node_sub_6_formula for_cc61,
     Section_node_formula_t.Section_node_sub_6_formula for_cc62) ->
	 Section_node_sub_6_formula_v.map2 f_of_tag_gro for_cc61 for_cc62

  | (Section_node_formula_t.Section_node_sub_7_formula for_cc11, 
     Section_node_formula_t.Section_node_sub_7_formula for_cc12) ->
	 Section_node_sub_7_formula_v.map2 f_of_tag_gro for_cc11 for_cc12
	 
  | (Section_node_formula_t.Section_node_sub_8_formula for_cc21,
     Section_node_formula_t.Section_node_sub_8_formula for_cc22) ->
	 Section_node_sub_8_formula_v.map2 f_of_tag_gro for_cc21 for_cc22

  | (Section_node_formula_t.Section_node_sub_9_formula for_cc31, 
     Section_node_formula_t.Section_node_sub_9_formula for_cc32) ->
	 Section_node_sub_9_formula_v.map2 f_of_tag_gro for_cc31 for_cc32
	 
  | (Section_node_formula_t.Section_node_sub10_formula for_cc41,
     Section_node_formula_t.Section_node_sub10_formula for_cc42) ->
	 Section_node_sub10_formula_v.map2 f_of_tag_gro for_cc41 for_cc42

  | (Section_node_formula_t.Section_node_sub11_formula for_cc51, 
     Section_node_formula_t.Section_node_sub11_formula for_cc52) ->
	 Section_node_sub11_formula_v.map2 f_of_tag_gro for_cc51 for_cc52

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
	 
  | (Section_node_formula_t.Section_node_sub_2_formula for_cc21,
     Section_node_formula_t.Section_node_sub_2_formula for_cc22) ->
	 Section_node_sub_2_formula_v.iter2 f_of_tag_gro for_cc21 for_cc22

  | (Section_node_formula_t.Section_node_sub_3_formula for_cc31, 
     Section_node_formula_t.Section_node_sub_3_formula for_cc32) ->
	 Section_node_sub_3_formula_v.iter2 f_of_tag_gro for_cc31 for_cc32
	 
  | (Section_node_formula_t.Section_node_sub_4_formula for_cc41,
     Section_node_formula_t.Section_node_sub_4_formula for_cc42) ->
	 Section_node_sub_4_formula_v.iter2 f_of_tag_gro for_cc41 for_cc42

  | (Section_node_formula_t.Section_node_sub_5_formula for_cc51, 
     Section_node_formula_t.Section_node_sub_5_formula for_cc52) ->
	 Section_node_sub_5_formula_v.iter2 f_of_tag_gro for_cc51 for_cc52
	 
  | (Section_node_formula_t.Section_node_sub_6_formula for_cc61,
     Section_node_formula_t.Section_node_sub_6_formula for_cc62) ->
	 Section_node_sub_6_formula_v.iter2 f_of_tag_gro for_cc61 for_cc62

  | (Section_node_formula_t.Section_node_sub_7_formula for_cc11, 
     Section_node_formula_t.Section_node_sub_7_formula for_cc12) ->
	 Section_node_sub_7_formula_v.iter2 f_of_tag_gro for_cc11 for_cc12
	 
  | (Section_node_formula_t.Section_node_sub_8_formula for_cc21,
     Section_node_formula_t.Section_node_sub_8_formula for_cc22) ->
	 Section_node_sub_8_formula_v.iter2 f_of_tag_gro for_cc21 for_cc22

  | (Section_node_formula_t.Section_node_sub_9_formula for_cc31, 
     Section_node_formula_t.Section_node_sub_9_formula for_cc32) ->
	 Section_node_sub_9_formula_v.iter2 f_of_tag_gro for_cc31 for_cc32
	 
  | (Section_node_formula_t.Section_node_sub10_formula for_cc41,
     Section_node_formula_t.Section_node_sub10_formula for_cc42) ->
	 Section_node_sub10_formula_v.iter2 f_of_tag_gro for_cc41 for_cc42

  | (Section_node_formula_t.Section_node_sub11_formula for_cc51, 
     Section_node_formula_t.Section_node_sub11_formula for_cc52) ->
	 Section_node_sub11_formula_v.iter2 f_of_tag_gro for_cc51 for_cc52

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Section type" 
	(Format.sprintf "couple (%s, %s)" (name for_sss1) (name for_sss2))
	"Check"
;;

