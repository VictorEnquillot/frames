(** {3 Camlparagraph_for_any_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlparagraph_for_any_formula_v";
   "Needed-by : FGNR:Camlparagraph_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlparagraph";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cfa = 
  match for_cfa with
  | Camlparagraph_for_any_formula_t.Camlparagraph_for_any_comment_formula for_cc1 ->
      Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
        (Camlparagraph_for_any_comment_formula_v.symbol_of_formula for_cc1)

  | Camlparagraph_for_any_formula_t.Camlparagraph_for_any_function_formula for_cc2 ->
      Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_function_symbol
        (Camlparagraph_for_any_function_formula_v.symbol_of_formula for_cc2)
;;

(** {6 Naming_for_formula} *)

let name for_cfa =
  let sym_cfa = symbol_of_formula for_cfa in
  Camlparagraph_for_any_symbol_v.name sym_cfa
;;
(* ***
let longname for_cfa =
  let sym_cfa = symbol_of_formula for_cfa in
  Camlparagraph_for_any_symbol_v.longname sym_cfa
;;

let string_off for_cfa =
  let sym_cfa = symbol_of_formula for_cfa in
  Camlparagraph_for_any_symbol_v.string_off sym_cfa
;;

let fullname for_cfa =
  let sym_cfa = symbol_of_formula for_cfa in
  Camlparagraph_for_any_symbol_v.longname sym_cfa
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_cfa soi_sec =
  match sym_cfa with 
  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol sym_cc1 ->
      Camlparagraph_for_any_formula_t.Camlparagraph_for_any_comment_formula 
        (Camlparagraph_for_any_comment_formula_v.make sym_cc1 soi_sec)

  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_function_symbol sym_cc2 ->
      Camlparagraph_for_any_formula_t.Camlparagraph_for_any_function_formula 
        (Camlparagraph_for_any_function_formula_v.make sym_cc2 soi_sec)
;;

(** {6 Retrieving} *)

let retrieve tag_cfa =
  let soi_sec = Tag_v.sole_index_off_tag tag_cfa in
  let sym_cfa = Tag_v.entity_off_tag tag_cfa in
  make sym_cfa soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let section_tag_list_off_camlparagraph_for_any_formula for_cfa =
  match for_cfa with 
  | Camlparagraph_for_any_formula_t.Camlparagraph_for_any_comment_formula for_cc1 ->
        Camlparagraph_for_any_comment_formula_v.section_tag_list_off_camlparagraph_for_any_comment_formula for_cc1

  | Camlparagraph_for_any_formula_t.Camlparagraph_for_any_function_formula for_cc2 ->
        Camlparagraph_for_any_function_formula_v.section_tag_list_off_camlparagraph_for_any_function_formula for_cc2
;;

let section_tag_list_off_camlparagraph_for_any_tag tag_cfa =
  let for_cfa = retrieve tag_cfa in
  section_tag_list_off_camlparagraph_for_any_formula for_cfa
;;
    
let camlline_tag_list_off_camlparagraph_for_any_formula for_cfa =
  let tag_sec_l = 
    section_tag_list_off_camlparagraph_for_any_formula 
      for_cfa 
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

let camlline_tag_list_off_camlparagraph_for_any_tag tag_cfa =
  let for_cfa = retrieve tag_cfa in
  camlline_tag_list_off_camlparagraph_for_any_formula for_cfa
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_sec for_cfa = 
  match for_cfa with 
  | Camlparagraph_for_any_formula_t.Camlparagraph_for_any_comment_formula for_cc1 ->
        Camlparagraph_for_any_comment_formula_v.map f_of_tag_sec for_cc1

  | Camlparagraph_for_any_formula_t.Camlparagraph_for_any_function_formula for_cc2 ->
        Camlparagraph_for_any_function_formula_v.map f_of_tag_sec for_cc2
;;

let iter f_of_tag_sec for_cfa = 
  match for_cfa with 
  | Camlparagraph_for_any_formula_t.Camlparagraph_for_any_comment_formula for_cc1 ->
        Camlparagraph_for_any_comment_formula_v.iter f_of_tag_sec for_cc1

  | Camlparagraph_for_any_formula_t.Camlparagraph_for_any_function_formula for_cc2 ->
        Camlparagraph_for_any_function_formula_v.iter f_of_tag_sec for_cc2
;;

let map2 f_of_tag_sec for_cfa1 for_cfa2 = 
  match (for_cfa1, for_cfa2) with
  | (Camlparagraph_for_any_formula_t.Camlparagraph_for_any_comment_formula for_cc11, 
     Camlparagraph_for_any_formula_t.Camlparagraph_for_any_comment_formula for_cc12) ->
	 Camlparagraph_for_any_comment_formula_v.map2 f_of_tag_sec for_cc11 for_cc12
	 
  | (Camlparagraph_for_any_formula_t.Camlparagraph_for_any_function_formula for_cc21,
     Camlparagraph_for_any_formula_t.Camlparagraph_for_any_function_formula for_cc22) ->
	 Camlparagraph_for_any_function_formula_v.map2 f_of_tag_sec for_cc21 for_cc22

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Camlparagraph type" 
	(Format.sprintf "couple (%s, %s)" (name for_cfa1) (name for_cfa2))
	"Check"
;;

let iter2 f_of_tag_sec for_cfa1 for_cfa2 = 
  match (for_cfa1, for_cfa2) with
  | (Camlparagraph_for_any_formula_t.Camlparagraph_for_any_comment_formula for_cc11, 
     Camlparagraph_for_any_formula_t.Camlparagraph_for_any_comment_formula for_cc12) ->
	 Camlparagraph_for_any_comment_formula_v.iter2 f_of_tag_sec for_cc11 for_cc12
	 
  | (Camlparagraph_for_any_formula_t.Camlparagraph_for_any_function_formula for_cc21,
     Camlparagraph_for_any_formula_t.Camlparagraph_for_any_function_formula for_cc22) ->
	 Camlparagraph_for_any_function_formula_v.iter2 f_of_tag_sec for_cc21 for_cc22

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Camlparagraph type" 
	(Format.sprintf "couple (%s, %s)" (name for_cfa1) (name for_cfa2))
	"Check"
;;

