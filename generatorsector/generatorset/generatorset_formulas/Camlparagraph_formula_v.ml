(** {3 Camlparagraph_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlparagraph_formula_v";
   "Needed-by : FGNR:Camlparagraph_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlparagraph";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cap = 
  match for_cap with
  | Camlparagraph_formula_t.Camlparagraph_for_any_formula for_cc1 ->
      Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
        (Camlparagraph_for_any_formula_v.symbol_of_formula for_cc1)

  | Camlparagraph_formula_t.Camlparagraph_for_symbol_formula for_cc2 ->
      Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
        (Camlparagraph_for_symbol_formula_v.symbol_of_formula for_cc2)

  | Camlparagraph_formula_t.Camlparagraph_for_formula_formula for_cc3 ->
      Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
        (Camlparagraph_for_formula_formula_v.symbol_of_formula for_cc3)

(* ***
  | Camlparagraph_formula_t.Camlparagraph_for_tag_formula for_cc4 ->
      Camlparagraph_symbol_t.Camlparagraph_for_tag_symbol
        (Camlparagraph_for_tag_formula_v.symbol_of_formula for_cc4)

  | Camlparagraph_formula_t.Camlparagraph_for_value_formula for_cc5 ->
      Camlparagraph_symbol_t.Camlparagraph_for_value_symbol
        (Camlparagraph_for_value_formula_v.symbol_of_formula for_cc5)
*** *)
;;

(** {6 Naming_for_formula} *)

let name for_cap =
  let sym_cap = symbol_of_formula for_cap in
  Camlparagraph_symbol_v.name sym_cap
;;
(* ***
let longname for_cap =
  let sym_cap = symbol_of_formula for_cap in
  Camlparagraph_symbol_v.longname sym_cap
;;

let string_off for_cap =
  let sym_cap = symbol_of_formula for_cap in
  Camlparagraph_symbol_v.string_off sym_cap
;;

let fullname for_cap =
  let sym_cap = symbol_of_formula for_cap in
  Camlparagraph_symbol_v.longname sym_cap
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_cap soi_sec =
  match sym_cap with 
  | Camlparagraph_symbol_t.Camlparagraph_for_any_symbol sym_cc1 ->
      Camlparagraph_formula_t.Camlparagraph_for_any_formula 
        (Camlparagraph_for_any_formula_v.make sym_cc1 soi_sec)

  | Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol sym_cc2 ->
      Camlparagraph_formula_t.Camlparagraph_for_formula_formula 
        (Camlparagraph_for_formula_formula_v.make sym_cc2 soi_sec)

  | Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol sym_cc2 ->
      Camlparagraph_formula_t.Camlparagraph_for_symbol_formula 
        (Camlparagraph_for_symbol_formula_v.make sym_cc2 soi_sec)

;;

(** {6 Retrieving} *)

let retrieve tag_cap =
  let soi_sec = Tag_v.sole_index_off_tag tag_cap in
  let sym_cap = Tag_v.entity_off_tag tag_cap in
  make sym_cap soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let section_tag_list_off_camlparagraph_formula for_cap =
  match for_cap with 
  | Camlparagraph_formula_t.Camlparagraph_for_any_formula for_cc1 ->
        Camlparagraph_for_any_formula_v.section_tag_list_off_camlparagraph_for_any_formula for_cc1

  | Camlparagraph_formula_t.Camlparagraph_for_symbol_formula for_cc2 ->
        Camlparagraph_for_symbol_formula_v.section_tag_list_off_camlparagraph_for_symbol_formula for_cc2

  | Camlparagraph_formula_t.Camlparagraph_for_formula_formula for_cc3 ->
        Camlparagraph_for_formula_formula_v.section_tag_list_off_camlparagraph_for_formula_formula for_cc3
(* ***
  | Camlparagraph_formula_t.Camlparagraph_for_tag_formula for_cc4 ->
        Camlparagraph_for_tag_formula_v.section_tag_list_off_camlparagraph_for_tag_formula for_cc4

  | Camlparagraph_formula_t.Camlparagraph_for_value_formula for_cc5 ->
        Camlparagraph_for_value_formula_v.section_tag_list_off_camlparagraph_for_value_formula for_cc5
*** *)
;;

let section_tag_list_off_camlparagraph_tag tag_cap =
  let for_cap = retrieve tag_cap in
  section_tag_list_off_camlparagraph_formula for_cap
;;
    
let camlline_tag_list_off_camlparagraph_formula for_cap =
  let tag_sec_l = 
    section_tag_list_off_camlparagraph_formula 
      for_cap 
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

let camlline_tag_list_off_camlparagraph_tag tag_cap =
  let for_cap = retrieve tag_cap in
  camlline_tag_list_off_camlparagraph_formula for_cap
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_sec for_cap = 
  match for_cap with 
  | Camlparagraph_formula_t.Camlparagraph_for_any_formula for_cc1 ->
        Camlparagraph_for_any_formula_v.map f_of_tag_sec for_cc1

  | Camlparagraph_formula_t.Camlparagraph_for_symbol_formula for_cc2 ->
        Camlparagraph_for_symbol_formula_v.map f_of_tag_sec for_cc2

  | Camlparagraph_formula_t.Camlparagraph_for_formula_formula for_cc3 ->
        Camlparagraph_for_formula_formula_v.map f_of_tag_sec for_cc3

(* ***
`
  | Camlparagraph_formula_t.Camlparagraph_for_tag_formula for_cc4 ->
        Camlparagraph_for_tag_formula_v.map f_of_tag_sec for_cc4

  | Camlparagraph_formula_t.Camlparagraph_for_value_formula for_cc5 ->
        Camlparagraph_for_value_formula_v.map f_of_tag_sec for_cc5

  | Camlparagraph_formula_t.Camlparagraph_sub_6_formula for_cc6 ->
        Camlparagraph_sub_6_formula_v.map f_of_tag_sec for_cc6
*** *)
;;

let iter f_of_tag_sec for_cap = 
  match for_cap with 
  | Camlparagraph_formula_t.Camlparagraph_for_any_formula for_cc1 ->
        Camlparagraph_for_any_formula_v.iter f_of_tag_sec for_cc1

  | Camlparagraph_formula_t.Camlparagraph_for_symbol_formula for_cc2 ->
        Camlparagraph_for_symbol_formula_v.iter f_of_tag_sec for_cc2
  | Camlparagraph_formula_t.Camlparagraph_for_formula_formula for_cc3 ->
        Camlparagraph_for_formula_formula_v.iter f_of_tag_sec for_cc3

(* ***
  | Camlparagraph_formula_t.Camlparagraph_for_tag_formula for_cc4 ->
        Camlparagraph_for_tag_formula_v.iter f_of_tag_sec for_cc4

  | Camlparagraph_formula_t.Camlparagraph_for_value_formula for_cc5 ->
        Camlparagraph_for_value_formula_v.iter f_of_tag_sec for_cc5
*** *)
;;

let map2 f_of_tag_sec for_cap1 for_cap2 = 
  match (for_cap1, for_cap2) with
  | (Camlparagraph_formula_t.Camlparagraph_for_any_formula for_cc11, 
     Camlparagraph_formula_t.Camlparagraph_for_any_formula for_cc12) ->
	 Camlparagraph_for_any_formula_v.map2 f_of_tag_sec for_cc11 for_cc12
	 
  | (Camlparagraph_formula_t.Camlparagraph_for_symbol_formula for_cc21,
     Camlparagraph_formula_t.Camlparagraph_for_symbol_formula for_cc22) ->
	 Camlparagraph_for_symbol_formula_v.map2 f_of_tag_sec for_cc21 for_cc22

  | (Camlparagraph_formula_t.Camlparagraph_for_formula_formula for_cc31, 
     Camlparagraph_formula_t.Camlparagraph_for_formula_formula for_cc32) ->
	 Camlparagraph_for_formula_formula_v.map2 f_of_tag_sec for_cc31 for_cc32
(* ***
	 
  | (Camlparagraph_formula_t.Camlparagraph_for_tag_formula for_cc41,
     Camlparagraph_formula_t.Camlparagraph_for_tag_formula for_cc42) ->
	 Camlparagraph_for_tag_formula_v.map2 f_of_tag_sec for_cc41 for_cc42

  | (Camlparagraph_formula_t.Camlparagraph_for_value_formula for_cc51, 
     Camlparagraph_formula_t.Camlparagraph_for_value_formula for_cc52) ->
	 Camlparagraph_for_value_formula_v.map2 f_of_tag_sec for_cc51 for_cc52
* ***)	 
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Camlparagraph type" 
	(Format.sprintf "couple (%s, %s)" (name for_cap1) (name for_cap2))
	"Check"
;;

let iter2 f_of_tag_sec for_cap1 for_cap2 = 
  match (for_cap1, for_cap2) with
  | (Camlparagraph_formula_t.Camlparagraph_for_any_formula for_cc11, 
     Camlparagraph_formula_t.Camlparagraph_for_any_formula for_cc12) ->
	 Camlparagraph_for_any_formula_v.iter2 f_of_tag_sec for_cc11 for_cc12
	 
  | (Camlparagraph_formula_t.Camlparagraph_for_symbol_formula for_cc21,
     Camlparagraph_formula_t.Camlparagraph_for_symbol_formula for_cc22) ->
	 Camlparagraph_for_symbol_formula_v.iter2 f_of_tag_sec for_cc21 for_cc22

  | (Camlparagraph_formula_t.Camlparagraph_for_formula_formula for_cc31, 
     Camlparagraph_formula_t.Camlparagraph_for_formula_formula for_cc32) ->
	 Camlparagraph_for_formula_formula_v.iter2 f_of_tag_sec for_cc31 for_cc32
(* ***
	 
  | (Camlparagraph_formula_t.Camlparagraph_for_tag_formula for_cc41,
     Camlparagraph_formula_t.Camlparagraph_for_tag_formula for_cc42) ->
	 Camlparagraph_for_tag_formula_v.iter2 f_of_tag_sec for_cc41 for_cc42

  | (Camlparagraph_formula_t.Camlparagraph_for_value_formula for_cc51, 
     Camlparagraph_formula_t.Camlparagraph_for_value_formula for_cc52) ->
	 Camlparagraph_for_value_formula_v.iter2 f_of_tag_sec for_cc51 for_cc52
*** *)	 
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Camlparagraph type" 
	(Format.sprintf "couple (%s, %s)" (name for_cap1) (name for_cap2))
	"Check"
;;

