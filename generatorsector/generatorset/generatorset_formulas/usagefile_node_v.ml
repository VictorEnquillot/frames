(** {3 Usagefile_node_formula_v} *)b

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Usagefile_node_formula_v";
   "Needed-by : FGNR:Usagefile_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Item";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_iii = 
  match for_iii with
  | Usagefile_node_formula_t.Usagefile_node_sub_1_formula for_cc1 ->
        Usagefile_node_sub_1_formula_v.symbol_of_formula for_cc1

  | Usagefile_node_formula_t.Usagefile_node_sub_2_formula for_cc2 ->
        Usagefile_node_sub_2_formula_v.symbol_of_formula for_cc2

  | Usagefile_node_formula_t.Usagefile_node_sub_3_formula for_cc3 ->
        Usagefile_node_sub_3_formula_v.symbol_of_formula for_cc3

  | Usagefile_node_formula_t.Usagefile_node_sub_4_formula for_cc4 ->
        Usagefile_node_sub_4_formula_v.symbol_of_formula for_cc4

  | Usagefile_node_formula_t.Usagefile_node_sub_5_formula for_cc5 ->
        Usagefile_node_sub_5_formula_v.symbol_of_formula for_cc5

  | Usagefile_node_formula_t.Usagefile_node_sub_6_formula for_cc6 ->
        Usagefile_node_sub_6_formula_v.symbol_of_formula for_cc6
;;

(** {6 Naming_for_formula} *)

let name for_iii =
  let sym_iii = symbol_of_formula for_iii in
  Usagefile_node_symbol_v.name sym_iii
;;
(* ***
let longname for_iii =
  let sym_iii = symbol_of_formula for_iii in
  Usagefile_node_symbol_v.longname sym_iii
;;

let string_off for_iii =
  let sym_iii = symbol_of_formula for_iii in
  Usagefile_node_symbol_v.string_off sym_iii
;;

let fullname for_iii =
  let sym_iii = symbol_of_formula for_iii in
  Usagefile_node_symbol_v.longname sym_iii
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_iii soi_usf =
  match sym_iii with 
  | Usagefile_node_symbol_t.Usagefile_node_sub_1_symbol sym_cc1 ->
      Usagefile_node_formula_t.Usagefile_node_sub_1_formula 
        (Usagefile_node_sub_1_formula_v.make sym_cc1 soi_usf)

  | Usagefile_node_symbol_t.Usagefile_node_sub_2_symbol sym_cc2 ->
      Usagefile_node_formula_t.Usagefile_node_sub_2_formula 
        (Usagefile_node_sub_2_formula_v.make sym_cc2 soi_usf)

  | Usagefile_node_symbol_t.Usagefile_node_sub_3_symbol sym_cc3 ->
      Usagefile_node_formula_t.Usagefile_node_sub_3_formula 
        (Usagefile_node_sub_1_formula_v.make sym_cc3 soi_usf)

  | Usagefile_node_symbol_t.Usagefile_node_sub_4_symbol sym_cc4 ->
      Usagefile_node_formula_t.Usagefile_node_sub_4_formula 
        (Usagefile_node_sub_2_formula_v.make sym_cc4 soi_usf)

  | Usagefile_node_symbol_t.Usagefile_node_sub_5_symbol sym_cc5 ->
      Usagefile_node_formula_t.Usagefile_node_sub_5_formula 
        (Usagefile_node_sub_2_formula_v.make sym_cc5 soi_usf)

  | Usagefile_node_symbol_t.Usagefile_node_sub_6_symbol sym_cc6 ->
      Usagefile_node_formula_t.Usagefile_node_sub_6_formula 
        (Usagefile_node_sub_2_formula_v.make sym_cc6 soi_usf)
;;

(** {6 Retrieving} *)

let retrieve tag_iii =
  let soi_usf = Tag_v.sole_index_off_tag tag_iii in
  let sym_iii = Tag_v.entity_off_tag tag_iii in
  make sym_iii soi_usf 
;; 

(** {6 Builder_tag_listing} *)

let item_tag_list_off_usagefile_node_formula for_iii =
  match for_iii with 
  | Usagefile_node_formula_t.Usagefile_node_sub_1_formula for_cc1 ->
        Usagefile_node_sub_1_formula_v.item_tag_list_off_usagefile_node_sub_1_formula for_cc1

  | Usagefile_node_formula_t.Usagefile_node_sub_2_formula for_cc2 ->
        Usagefile_node_sub_2_formula_v.item_tag_list_off_usagefile_node_sub_2_formula for_cc2

  | Usagefile_node_formula_t.Usagefile_node_sub_3_formula for_cc3 ->
        Usagefile_node_sub_3_formula_v.item_tag_list_off_usagefile_node_sub_3_formula for_cc3

  | Usagefile_node_formula_t.Usagefile_node_sub_4_formula for_cc4 ->
        Usagefile_node_sub_4_formula_v.item_tag_list_off_usagefile_node_sub_4_formula for_cc4

  | Usagefile_node_formula_t.Usagefile_node_sub_5_formula for_cc5 ->
        Usagefile_node_sub_5_formula_v.item_tag_list_off_usagefile_node_sub_5_formula for_cc5

  | Usagefile_node_formula_t.Usagefile_node_sub_6_formula for_cc6 ->
        Usagefile_node_sub_6_formula_v.item_tag_list_off_usagefile_node_sub_6_formula for_cc6
;;

let camlline_tag_list_off_usagefile_node_formula for_iii =
  let tag_ite_l = 
    item_tag_list_off_usagefile_node_formula 
      for_iii 
  in
  let for_ite_l = List.map
      Item_formula_v.retrieve 
      tag_ite_l 
  in
  let tag_cal_ll = List.map
      Item_formula_v.camlline_tag_list_off_item_formula 
      for_ite_l
  in 
  List.flatten tag_cal_ll
;;

(** {6 Iterating_for_formula_node} *)

let map f_of_tag_ite for_iii = 
  match for_iii with 
  | Usagefile_node_formula_t.Usagefile_node_sub_1_formula for_cc1 ->
        Usagefile_node_sub_1_formula_v.map f_of_tag_ite for_cc1

  | Usagefile_node_formula_t.Usagefile_node_sub_2_formula for_cc2 ->
        Usagefile_node_sub_2_formula_v.map f_of_tag_ite for_cc2

  | Usagefile_node_formula_t.Usagefile_node_sub_3_formula for_cc3 ->
        Usagefile_node_sub_3_formula_v.map f_of_tag_ite for_cc3

  | Usagefile_node_formula_t.Usagefile_node_sub_4_formula for_cc4 ->
        Usagefile_node_sub_4_formula_v.map f_of_tag_ite for_cc4

  | Usagefile_node_formula_t.Usagefile_node_sub_5_formula for_cc5 ->
        Usagefile_node_sub_5_formula_v.map f_of_tag_ite for_cc5

  | Usagefile_node_formula_t.Usagefile_node_sub_6_formula for_cc6 ->
        Usagefile_node_sub_6_formula_v.map f_of_tag_ite for_cc6
;;

let iter f_of_tag_ite for_iii = 
  match for_iii with 
  | Usagefile_node_formula_t.Usagefile_node_sub_1_formula for_cc1 ->
        Usagefile_node_sub_1_formula_v.iter f_of_tag_ite for_cc1

  | Usagefile_node_formula_t.Usagefile_node_sub_2_formula for_cc2 ->
        Usagefile_node_sub_2_formula_v.iter f_of_tag_ite for_cc2

  | Usagefile_node_formula_t.Usagefile_node_sub_3_formula for_cc3 ->
        Usagefile_node_sub_3_formula_v.iter f_of_tag_ite for_cc3

  | Usagefile_node_formula_t.Usagefile_node_sub_4_formula for_cc4 ->
        Usagefile_node_sub_4_formula_v.iter f_of_tag_ite for_cc4

  | Usagefile_node_formula_t.Usagefile_node_sub_5_formula for_cc5 ->
        Usagefile_node_sub_5_formula_v.iter f_of_tag_ite for_cc5

  | Usagefile_node_formula_t.Usagefile_node_sub_6_formula for_cc6 ->
        Usagefile_node_sub_6_formula_v.iter f_of_tag_ite for_cc6
;;

let map2 f_of_tag_ite for_iii1 for_iii2 = 
  match (for_iii1, for_iii2) with
  | (Usagefile_node_formula_t.Usagefile_node_sub_1_formula for_cc11, 
     Usagefile_node_formula_t.Usagefile_node_sub_1_formula for_cc12) ->
	 Usagefile_node_sub_1_formula_v.map2 f_of_tag_ite for_cc11 for_cc12
	 
  | (Usagefile_node_formula_t.Usagefile_node_sub_2_formula for_cc21,
     Usagefile_node_formula_t.Usagefile_node_sub_2_formula for_cc22) ->
	 Usagefile_node_sub_2_formula_v.map2 f_of_tag_ite for_cc21 for_cc22

  | (Usagefile_node_formula_t.Usagefile_node_sub_3_formula for_cc31, 
     Usagefile_node_formula_t.Usagefile_node_sub_3_formula for_cc32) ->
	 Usagefile_node_sub_3_formula_v.map2 f_of_tag_ite for_cc31 for_cc32
	 
  | (Usagefile_node_formula_t.Usagefile_node_sub_4_formula for_cc41,
     Usagefile_node_formula_t.Usagefile_node_sub_4_formula for_cc42) ->
	 Usagefile_node_sub_4_formula_v.map2 f_of_tag_ite for_cc41 for_cc42

  | (Usagefile_node_formula_t.Usagefile_node_sub_5_formula for_cc51, 
     Usagefile_node_formula_t.Usagefile_node_sub_5_formula for_cc52) ->
	 Usagefile_node_sub_5_formula_v.map2 f_of_tag_ite for_cc51 for_cc52
	 
  | (Usagefile_node_formula_t.Usagefile_node_sub_6_formula for_cc61,
     Usagefile_node_formula_t.Usagefile_node_sub_6_formula for_cc62) ->
	 Usagefile_node_sub_6_formula_v.map2 f_of_tag_ite for_cc61 for_cc62

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Usagefile type" 
	(Format.sprintf "couple (%s, %s)" (name for_iii1) (name for_iii2))
	"Check"
;;

let iter2 f_of_tag_ite for_iii1 for_iii2 = 
  match (for_iii1, for_iii2) with
  | (Usagefile_node_formula_t.Usagefile_node_sub_1_formula for_cc11, 
     Usagefile_node_formula_t.Usagefile_node_sub_1_formula for_cc12) ->
	 Usagefile_node_sub_5_formula_v.iter2 f_of_tag_ite for_cc11 for_cc12
	 
  | (Usagefile_node_formula_t.Usagefile_node_sub_2_formula for_cc21,
     Usagefile_node_formula_t.Usagefile_node_sub_2_formula for_cc22) ->
	 Usagefile_node_sub_2_formula_v.iter2 f_of_tag_ite for_cc21 for_cc22

  | (Usagefile_node_formula_t.Usagefile_node_sub_3_formula for_cc31, 
     Usagefile_node_formula_t.Usagefile_node_sub_3_formula for_cc32) ->
	 Usagefile_node_sub_3_formula_v.iter2 f_of_tag_ite for_cc31 for_cc32
	 
  | (Usagefile_node_formula_t.Usagefile_node_sub_4_formula for_cc41,
     Usagefile_node_formula_t.Usagefile_node_sub_4_formula for_cc42) ->
	 Usagefile_node_sub_4_formula_v.iter2 f_of_tag_ite for_cc41 for_cc42

  | (Usagefile_node_formula_t.Usagefile_node_sub_5_formula for_cc51, 
     Usagefile_node_formula_t.Usagefile_node_sub_5_formula for_cc52) ->
	 Usagefile_node_sub_5_formula_v.iter2 f_of_tag_ite for_cc51 for_cc52
	 
  | (Usagefile_node_formula_t.Usagefile_node_sub_6_formula for_cc61,
     Usagefile_node_formula_t.Usagefile_node_sub_6_formula for_cc62) ->
	 Usagefile_node_sub_6_formula_v.iter2 f_of_tag_ite for_cc61 for_cc62

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Usagefile type" 
	(Format.sprintf "couple (%s, %s)" (name for_iii1) (name for_iii2))
	"Check"
;;

