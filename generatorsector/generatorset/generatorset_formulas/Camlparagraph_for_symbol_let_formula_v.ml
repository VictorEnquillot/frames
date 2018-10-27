(** {3 Camlparagraph_for_symbol_let_formula_v} *)
(** {3 Camlparagraph_for_symbol_let_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlparagraph_for_symbol_let_formula_v";
   "Needed-by : FGNR:Camlparagraph_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlparagraph";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ccc = 
  match for_ccc with
  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_argument_formula for_cc1 ->
      Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        (Camlparagraph_for_symbol_let_argument_formula_v.symbol_of_formula for_cc1)

  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_abbreviate_formula for_cc2 ->
      Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
        (Camlparagraph_for_symbol_let_abbreviate_formula_v.symbol_of_formula for_cc2)

  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_match_formula for_cc3 ->
      Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
        (Camlparagraph_for_symbol_let_match_formula_v.symbol_of_formula for_cc3)

  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_mixed_formula for_cc4 ->
      Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_mixed_symbol
        (Camlparagraph_for_symbol_let_mixed_formula_v.symbol_of_formula for_cc4)


;;

(** {6 Naming_for_formula} *)

let name for_ccc =
  let sym_ccc = symbol_of_formula for_ccc in
  Camlparagraph_for_symbol_let_symbol_v.name sym_ccc
;;
(* ***
let longname for_ccc =
  let sym_ccc = symbol_of_formula for_ccc in
  Camlparagraph_for_symbol_let_symbol_v.longname sym_ccc
;;

let string_off for_ccc =
  let sym_ccc = symbol_of_formula for_ccc in
  Camlparagraph_for_symbol_let_symbol_v.string_off sym_ccc
;;

let fullname for_ccc =
  let sym_ccc = symbol_of_formula for_ccc in
  Camlparagraph_for_symbol_let_symbol_v.longname sym_ccc
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_ccc soi_sec =
  match sym_ccc with 
  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol sym_cc1 ->
      Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_argument_formula 
        (Camlparagraph_for_symbol_let_argument_formula_v.make sym_cc1 soi_sec)

  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol sym_cc2 ->
      Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_abbreviate_formula 
        (Camlparagraph_for_symbol_let_abbreviate_formula_v.make sym_cc2 soi_sec)

  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol sym_cc3 ->
      Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_match_formula 
        (Camlparagraph_for_symbol_let_match_formula_v.make sym_cc3 soi_sec)

  | Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_mixed_symbol sym_cc4 ->
      Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_mixed_formula 
        (Camlparagraph_for_symbol_let_mixed_formula_v.make sym_cc4 soi_sec)
;;

(** {6 Retrieving} *)

let retrieve tag_ccc =
  let soi_sec = Tag_v.sole_index_off_tag tag_ccc in
  let sym_ccc = Tag_v.entity_off_tag tag_ccc in
  make sym_ccc soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let section_tag_list_off_camlparagraph_for_symbol_let_formula for_ccc =
  match for_ccc with 
  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_argument_formula for_cc1 ->
        Camlparagraph_for_symbol_let_argument_formula_v.section_tag_list_off_camlparagraph_for_symbol_let_argument_formula for_cc1

  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_abbreviate_formula for_cc2 ->
        Camlparagraph_for_symbol_let_abbreviate_formula_v.section_tag_list_off_camlparagraph_for_symbol_let_abbreviate_formula for_cc2

  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_match_formula for_cc3 ->
        Camlparagraph_for_symbol_let_match_formula_v.section_tag_list_off_camlparagraph_for_symbol_let_match_formula for_cc3

  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_mixed_formula for_cc4 ->
        Camlparagraph_for_symbol_let_mixed_formula_v.section_tag_list_off_camlparagraph_for_symbol_let_mixed_formula for_cc4


;;

let section_tag_list_off_camlparagraph_for_symbol_let_tag tag_ccc =
  let for_ccc = retrieve tag_ccc in
  section_tag_list_off_camlparagraph_for_symbol_let_formula for_ccc
;;
    
let camlline_tag_list_off_camlparagraph_for_symbol_let_formula for_ccc =
  let tag_sec_l = 
    section_tag_list_off_camlparagraph_for_symbol_let_formula 
      for_ccc 
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

let camlline_tag_list_off_camlparagraph_for_symbol_let_tag tag_ccc =
  let for_ccc = retrieve tag_ccc in
  camlline_tag_list_off_camlparagraph_for_symbol_let_formula for_ccc
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_sec for_ccc = 
  match for_ccc with 
  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_argument_formula for_cc1 ->
        Camlparagraph_for_symbol_let_argument_formula_v.map f_of_tag_sec for_cc1

  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_abbreviate_formula for_cc2 ->
        Camlparagraph_for_symbol_let_abbreviate_formula_v.map f_of_tag_sec for_cc2

  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_match_formula for_cc3 ->
        Camlparagraph_for_symbol_let_match_formula_v.map f_of_tag_sec for_cc3

  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_mixed_formula for_cc4 ->
        Camlparagraph_for_symbol_let_mixed_formula_v.map f_of_tag_sec for_cc4


;;

let iter f_of_tag_sec for_ccc = 
  match for_ccc with 
  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_argument_formula for_cc1 ->
        Camlparagraph_for_symbol_let_argument_formula_v.iter f_of_tag_sec for_cc1

  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_abbreviate_formula for_cc2 ->
        Camlparagraph_for_symbol_let_abbreviate_formula_v.iter f_of_tag_sec for_cc2

  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_match_formula for_cc3 ->
        Camlparagraph_for_symbol_let_match_formula_v.iter f_of_tag_sec for_cc3

  | Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_mixed_formula for_cc4 ->
        Camlparagraph_for_symbol_let_mixed_formula_v.iter f_of_tag_sec for_cc4


;;

let map2 f_of_tag_sec for_ccc1 for_ccc2 = 
  match (for_ccc1, for_ccc2) with
  | (Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_argument_formula for_cc11, 
     Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_argument_formula for_cc12) ->
	 Camlparagraph_for_symbol_let_argument_formula_v.map2 f_of_tag_sec for_cc11 for_cc12
	 
  | (Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_abbreviate_formula for_cc21,
     Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_abbreviate_formula for_cc22) ->
	 Camlparagraph_for_symbol_let_abbreviate_formula_v.map2 f_of_tag_sec for_cc21 for_cc22

  | (Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_match_formula for_cc31, 
     Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_match_formula for_cc32) ->
	 Camlparagraph_for_symbol_let_match_formula_v.map2 f_of_tag_sec for_cc31 for_cc32
	 
  | (Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_mixed_formula for_cc41,
     Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_mixed_formula for_cc42) ->
	 Camlparagraph_for_symbol_let_mixed_formula_v.map2 f_of_tag_sec for_cc41 for_cc42

	 

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Camlparagraph type" 
	(Format.sprintf "couple (%s, %s)" (name for_ccc1) (name for_ccc2))
	"Check"
;;

let iter2 f_of_tag_sec for_ccc1 for_ccc2 = 
  match (for_ccc1, for_ccc2) with
  | (Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_argument_formula for_cc11, 
     Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_argument_formula for_cc12) ->
	 Camlparagraph_for_symbol_let_argument_formula_v.iter2 f_of_tag_sec for_cc11 for_cc12
	 
  | (Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_abbreviate_formula for_cc21,
     Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_abbreviate_formula for_cc22) ->
	 Camlparagraph_for_symbol_let_abbreviate_formula_v.iter2 f_of_tag_sec for_cc21 for_cc22

  | (Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_match_formula for_cc31, 
     Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_match_formula for_cc32) ->
	 Camlparagraph_for_symbol_let_match_formula_v.iter2 f_of_tag_sec for_cc31 for_cc32
	 
  | (Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_mixed_formula for_cc41,
     Camlparagraph_for_symbol_let_formula_t.Camlparagraph_for_symbol_let_mixed_formula for_cc42) ->
	 Camlparagraph_for_symbol_let_mixed_formula_v.iter2 f_of_tag_sec for_cc41 for_cc42

	 

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Camlparagraph type" 
	(Format.sprintf "couple (%s, %s)" (name for_ccc1) (name for_ccc2))
	"Check"
;;

