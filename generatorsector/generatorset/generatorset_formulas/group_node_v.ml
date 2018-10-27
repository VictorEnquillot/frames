(** {3 Group_node_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Group_node_formula_v";
   "Needed-by : FGNR:Group_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlline";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ggg = 
  match for_ggg with
  | Group_node_formula_t.Group_node_sub_1_formula for_cc1 ->
      Group_node_symbol_t.Group_node_sub_1_symbol
        (Group_node_sub_1_formula_v.symbol_of_formula for_cc1)

  | Group_node_formula_t.Group_node_sub_2_formula for_cc2 ->
      Group_node_symbol_t.Group_node_sub_2_symbol
        (Group_node_sub_2_formula_v.symbol_of_formula for_cc2)

  | Group_node_formula_t.Group_node_sub_3_formula for_cc3 ->
      Group_node_symbol_t.Group_node_sub_3_symbol
        (Group_node_sub_3_formula_v.symbol_of_formula for_cc3)

  | Group_node_formula_t.Group_node_sub_4_formula for_cc4 ->
      Group_node_symbol_t.Group_node_sub_4_symbol
        (Group_node_sub_4_formula_v.symbol_of_formula for_cc4)

  | Group_node_formula_t.Group_node_sub_5_formula for_cc5 ->
      Group_node_symbol_t.Group_node_sub_5_symbol
        (Group_node_sub_5_formula_v.symbol_of_formula for_cc5)

  | Group_node_formula_t.Group_node_sub_6_formula for_cc6 ->
      Group_node_symbol_t.Group_node_sub_6_symbol
        (Group_node_sub_6_formula_v.symbol_of_formula for_cc6)

  | Group_node_formula_t.Group_node_sub_7_formula for_cc7 ->
      Group_node_symbol_t.Group_node_sub_7_symbol
        (Group_node_sub_7_formula_v.symbol_of_formula for_cc7)

  | Group_node_formula_t.Group_node_sub_8_formula for_cc8 ->
      Group_node_symbol_t.Group_node_sub_8_symbol
        (Group_node_sub_8_formula_v.symbol_of_formula for_cc8)

  | Group_node_formula_t.Group_node_sub_9_formula for_cc9 ->
      Group_node_symbol_t.Group_node_sub_9_symbol
        (Group_node_sub_9_formula_v.symbol_of_formula for_cc9)

  | Group_node_formula_t.Group_node_sub10_formula for_cc6 ->
      Group_node_symbol_t.Group_node_sub10_symbol
        (Group_node_sub10_formula_v.symbol_of_formula for_cc6)
;;

(** {6 Naming_for_formula} *)

let name for_ggg =
  let sym_ggg = symbol_of_formula for_ggg in
  Group_node_symbol_v.name sym_ggg
;;
(* ***
let longname for_ggg =
  let sym_ggg = symbol_of_formula for_ggg in
  Group_node_symbol_v.longname sym_ggg
;;

let string_off for_ggg =
  let sym_ggg = symbol_of_formula for_ggg in
  Group_node_symbol_v.string_off sym_ggg
;;

let fullname for_ggg =
  let sym_ggg = symbol_of_formula for_ggg in
  Group_node_symbol_v.longname sym_ggg
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_ggg soi_gro =
  match sym_ggg with 
  | Group_node_symbol_t.Group_node_sub_1_symbol sym_cc1 ->
      Group_node_formula_t.Group_node_sub_1_formula 
        (Group_node_sub_1_formula_v.make sym_cc1 soi_gro)

  | Group_node_symbol_t.Group_node_sub_2_symbol sym_cc2 ->
      Group_node_formula_t.Group_node_sub_2_formula 
        (Group_node_sub_2_formula_v.make sym_cc2 soi_gro)

  | Group_node_symbol_t.Group_node_sub_3_symbol sym_cc3 ->
      Group_node_formula_t.Group_node_sub_3_formula 
        (Group_node_sub_3_formula_v.make sym_cc3 soi_gro)

  | Group_node_symbol_t.Group_node_sub_4_symbol sym_cc4 ->
      Group_node_formula_t.Group_node_sub_4_formula 
        (Group_node_sub_4_formula_v.make sym_cc4 soi_gro)

  | Group_node_symbol_t.Group_node_sub_5_symbol sym_cc5 ->
      Group_node_formula_t.Group_node_sub_5_formula 
        (Group_node_sub_5_formula_v.make sym_cc5 soi_gro)

  | Group_node_symbol_t.Group_node_sub_6_symbol sym_cc6 ->
      Group_node_formula_t.Group_node_sub_6_formula 
        (Group_node_sub_6_formula_v.make sym_cc6 soi_gro)


  | Group_node_symbol_t.Group_node_sub_7_symbol sym_cc7 ->
      Group_node_formula_t.Group_node_sub_7_formula 
        (Group_node_sub_7_formula_v.make sym_cc7 soi_gro)

  | Group_node_symbol_t.Group_node_sub_8_symbol sym_cc8 ->
      Group_node_formula_t.Group_node_sub_8_formula 
        (Group_node_sub_8_formula_v.make sym_cc8 soi_gro)

  | Group_node_symbol_t.Group_node_sub_9_symbol sym_cc9 ->
      Group_node_formula_t.Group_node_sub_9_formula 
        (Group_node_sub_9_formula_v.make sym_cc9 soi_gro)

  | Group_node_symbol_t.Group_node_sub10_symbol sym_cc10 ->
      Group_node_formula_t.Group_node_sub10_formula 
        (Group_node_sub10_formula_v.make sym_cc10 soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_ggg =
  let soi_gro = Tag_v.sole_index_off_tag tag_ggg in
  let sym_ggg = Tag_v.entity_off_tag tag_ggg in
  make sym_ggg soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_node_formula for_ggg =
  match for_ggg with 
  | Group_node_formula_t.Group_node_sub_1_formula for_cc1 ->
        Group_node_sub_1_formula_v.camlline_tag_list_off_group_node_sub_1_formula for_cc1

  | Group_node_formula_t.Group_node_sub_2_formula for_cc2 ->
        Group_node_sub_2_formula_v.camlline_tag_list_off_group_node_sub_2_formula for_cc2

  | Group_node_formula_t.Group_node_sub_3_formula for_cc3 ->
        Group_node_sub_3_formula_v.camlline_tag_list_off_group_node_sub_3_formula for_cc3

  | Group_node_formula_t.Group_node_sub_4_formula for_cc4 ->
        Group_node_sub_4_formula_v.camlline_tag_list_off_group_node_sub_4_formula for_cc4

  | Group_node_formula_t.Group_node_sub_5_formula for_cc5 ->
        Group_node_sub_5_formula_v.camlline_tag_list_off_group_node_sub_5_formula for_cc5

  | Group_node_formula_t.Group_node_sub_6_formula for_cc6 ->
        Group_node_sub_6_formula_v.camlline_tag_list_off_group_node_sub_6_formula for_cc6

  | Group_node_formula_t.Group_node_sub_7_formula for_cc7 ->
        Group_node_sub_7_formula_v.camlline_tag_list_off_group_node_sub_7_formula for_cc7

  | Group_node_formula_t.Group_node_sub_8_formula for_cc8 ->
        Group_node_sub_8_formula_v.camlline_tag_list_off_group_node_sub_8_formula for_cc8

  | Group_node_formula_t.Group_node_sub_9_formula for_cc9 ->
        Group_node_sub_9_formula_v.camlline_tag_list_off_group_node_sub_9_formula for_cc9

  | Group_node_formula_t.Group_node_sub10_formula for_cc10 ->
        Group_node_sub10_formula_v.camlline_tag_list_off_group_node_sub10_formula for_cc10
;;

let camlline_tag_list_off_group_node_tag tag_ggg =
  let for_ggg = retrieve tag_ggg in
  camlline_tag_list_off_group_node_formula for_ggg
;;
    
(** {6 Iterating_for_formula_node} *)

let map f_of_tag_cal for_ggg = 
  match for_ggg with 
  | Group_node_formula_t.Group_node_sub_1_formula for_cc1 ->
        Group_node_sub_1_formula_v.map f_of_tag_cal for_cc1

  | Group_node_formula_t.Group_node_sub_2_formula for_cc2 ->
        Group_node_sub_2_formula_v.map f_of_tag_cal for_cc2

  | Group_node_formula_t.Group_node_sub_3_formula for_cc3 ->
        Group_node_sub_3_formula_v.map f_of_tag_cal for_cc3

  | Group_node_formula_t.Group_node_sub_4_formula for_cc4 ->
        Group_node_sub_4_formula_v.map f_of_tag_cal for_cc4

  | Group_node_formula_t.Group_node_sub_5_formula for_cc5 ->
        Group_node_sub_5_formula_v.map f_of_tag_cal for_cc5

  | Group_node_formula_t.Group_node_sub_6_formula for_cc6 ->
        Group_node_sub_6_formula_v.map f_of_tag_cal for_cc6

  | Group_node_formula_t.Group_node_sub_7_formula for_cc7 ->
        Group_node_sub_7_formula_v.map f_of_tag_cal for_cc7

  | Group_node_formula_t.Group_node_sub_8_formula for_cc8 ->
        Group_node_sub_8_formula_v.map f_of_tag_cal for_cc8

  | Group_node_formula_t.Group_node_sub_9_formula for_cc9 ->
        Group_node_sub_9_formula_v.map f_of_tag_cal for_cc9

  | Group_node_formula_t.Group_node_sub10_formula for_cc10 ->
        Group_node_sub10_formula_v.map f_of_tag_cal for_cc10
;;

let iter f_of_tag_cal for_ggg = 
  match for_ggg with 
  | Group_node_formula_t.Group_node_sub_1_formula for_cc1 ->
        Group_node_sub_1_formula_v.iter f_of_tag_cal for_cc1

  | Group_node_formula_t.Group_node_sub_2_formula for_cc2 ->
        Group_node_sub_2_formula_v.iter f_of_tag_cal for_cc2

  | Group_node_formula_t.Group_node_sub_3_formula for_cc3 ->
        Group_node_sub_3_formula_v.iter f_of_tag_cal for_cc3

  | Group_node_formula_t.Group_node_sub_4_formula for_cc4 ->
        Group_node_sub_4_formula_v.iter f_of_tag_cal for_cc4

  | Group_node_formula_t.Group_node_sub_5_formula for_cc5 ->
        Group_node_sub_5_formula_v.iter f_of_tag_cal for_cc5

  | Group_node_formula_t.Group_node_sub_6_formula for_cc6 ->
        Group_node_sub_6_formula_v.iter f_of_tag_cal for_cc6

  | Group_node_formula_t.Group_node_sub_7_formula for_cc7 ->
        Group_node_sub_7_formula_v.iter f_of_tag_cal for_cc7

  | Group_node_formula_t.Group_node_sub_8_formula for_cc8 ->
        Group_node_sub_8_formula_v.iter f_of_tag_cal for_cc8

  | Group_node_formula_t.Group_node_sub_9_formula for_cc9 ->
        Group_node_sub_9_formula_v.iter f_of_tag_cal for_cc9

  | Group_node_formula_t.Group_node_sub10_formula for_cc10 ->
        Group_node_sub10_formula_v.iter f_of_tag_cal for_cc10
;;

let map2 f_of_tag_cal for_ggg1 for_ggg2 = 
  match (for_ggg1, for_ggg2) with
  | (Group_node_formula_t.Group_node_sub_1_formula for_cc11, 
     Group_node_formula_t.Group_node_sub_1_formula for_cc12) ->
	 Group_node_sub_1_formula_v.map2 f_of_tag_cal for_cc11 for_cc12
	 
  | (Group_node_formula_t.Group_node_sub_2_formula for_cc21,
     Group_node_formula_t.Group_node_sub_2_formula for_cc22) ->
	 Group_node_sub_2_formula_v.map2 f_of_tag_cal for_cc21 for_cc22

  | (Group_node_formula_t.Group_node_sub_3_formula for_cc31, 
     Group_node_formula_t.Group_node_sub_3_formula for_cc32) ->
	 Group_node_sub_3_formula_v.map2 f_of_tag_cal for_cc31 for_cc32
	 
  | (Group_node_formula_t.Group_node_sub_4_formula for_cc41,
     Group_node_formula_t.Group_node_sub_4_formula for_cc42) ->
	 Group_node_sub_4_formula_v.map2 f_of_tag_cal for_cc41 for_cc42

  | (Group_node_formula_t.Group_node_sub_5_formula for_cc51, 
     Group_node_formula_t.Group_node_sub_5_formula for_cc52) ->
	 Group_node_sub_5_formula_v.map2 f_of_tag_cal for_cc51 for_cc52
	 
  | (Group_node_formula_t.Group_node_sub_6_formula for_cc61,
     Group_node_formula_t.Group_node_sub_6_formula for_cc62) ->
	 Group_node_sub_6_formula_v.map2 f_of_tag_cal for_cc61 for_cc62
	 
  | (Group_node_formula_t.Group_node_sub_7_formula for_cc71,
     Group_node_formula_t.Group_node_sub_7_formula for_cc72) ->
	 Group_node_sub_7_formula_v.map2 f_of_tag_cal for_cc71 for_cc72
	 
  | (Group_node_formula_t.Group_node_sub_8_formula for_cc81,
     Group_node_formula_t.Group_node_sub_8_formula for_cc82) ->
	 Group_node_sub_8_formula_v.map2 f_of_tag_cal for_cc81 for_cc82
	 
  | (Group_node_formula_t.Group_node_sub_9_formula for_cc91,
     Group_node_formula_t.Group_node_sub_9_formula for_cc92) ->
	 Group_node_sub_9_formula_v.map2 f_of_tag_cal for_cc91 for_cc92
	 
  | (Group_node_formula_t.Group_node_sub10_formula for_cc101,
     Group_node_formula_t.Group_node_sub10_formula for_cc102) ->
	 Group_node_sub10_formula_v.map2 f_of_tag_cal for_cc101 for_cc102

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Group type" 
	(Format.sprintf "couple (%s, %s)" (name for_ggg1) (name for_ggg2))
	"Check"
;;

let iter2 f_of_tag_cal for_ggg1 for_ggg2 = 
  match (for_ggg1, for_ggg2) with
  | (Group_node_formula_t.Group_node_sub_1_formula for_cc11, 
     Group_node_formula_t.Group_node_sub_1_formula for_cc12) ->
	 Group_node_sub_1_formula_v.iter2 f_of_tag_cal for_cc11 for_cc12
	 
  | (Group_node_formula_t.Group_node_sub_2_formula for_cc21,
     Group_node_formula_t.Group_node_sub_2_formula for_cc22) ->
	 Group_node_sub_2_formula_v.iter2 f_of_tag_cal for_cc21 for_cc22

  | (Group_node_formula_t.Group_node_sub_3_formula for_cc31, 
     Group_node_formula_t.Group_node_sub_3_formula for_cc32) ->
	 Group_node_sub_3_formula_v.iter2 f_of_tag_cal for_cc31 for_cc32
	 
  | (Group_node_formula_t.Group_node_sub_4_formula for_cc41,
     Group_node_formula_t.Group_node_sub_4_formula for_cc42) ->
	 Group_node_sub_4_formula_v.iter2 f_of_tag_cal for_cc41 for_cc42

  | (Group_node_formula_t.Group_node_sub_5_formula for_cc51, 
     Group_node_formula_t.Group_node_sub_5_formula for_cc52) ->
	 Group_node_sub_5_formula_v.iter2 f_of_tag_cal for_cc51 for_cc52
	 
  | (Group_node_formula_t.Group_node_sub_6_formula for_cc61,
     Group_node_formula_t.Group_node_sub_6_formula for_cc62) ->
	 Group_node_sub_6_formula_v.iter2 f_of_tag_cal for_cc61 for_cc62
	 
  | (Group_node_formula_t.Group_node_sub_7_formula for_cc71,
     Group_node_formula_t.Group_node_sub_7_formula for_cc72) ->
	 Group_node_sub_7_formula_v.iter2 f_of_tag_cal for_cc71 for_cc72
	 
  | (Group_node_formula_t.Group_node_sub_8_formula for_cc81,
     Group_node_formula_t.Group_node_sub_8_formula for_cc82) ->
	 Group_node_sub_8_formula_v.iter2 f_of_tag_cal for_cc81 for_cc82
	 
  | (Group_node_formula_t.Group_node_sub_9_formula for_cc91,
     Group_node_formula_t.Group_node_sub_9_formula for_cc92) ->
	 Group_node_sub_9_formula_v.iter2 f_of_tag_cal for_cc91 for_cc92
	 
  | (Group_node_formula_t.Group_node_sub10_formula for_cc101,
     Group_node_formula_t.Group_node_sub10_formula for_cc102) ->
	 Group_node_sub10_formula_v.iter2 f_of_tag_cal for_cc101 for_cc102

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Group type" 
	(Format.sprintf "couple (%s, %s)" (name for_ggg1) (name for_ggg2))
	"Check"
;;

