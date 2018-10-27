(** {3 Group_for_symbol_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
   [
   "Needs : IGNR:";
   "Current : FGNR:Group_for_symbol_formula_v";
   "Needed-by : FGNR:Group_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlline";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gfa = 
  match for_gfa with
  | Group_for_symbol_formula_t.Group_for_symbol_body_formula for_cc1 ->
      Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
        (Group_for_symbol_body_formula_v.symbol_of_formula for_cc1)

  | Group_for_symbol_formula_t.Group_for_symbol_footer_formula for_cc2 ->
      Group_for_symbol_symbol_t.Group_for_symbol_footer_symbol
        (Group_for_symbol_footer_formula_v.symbol_of_formula for_cc2)

  | Group_for_symbol_formula_t.Group_for_symbol_header_formula for_cc3 ->
      Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
        (Group_for_symbol_header_formula_v.symbol_of_formula for_cc3)
;;

(** {6 Naming_for_formula} *)

let name for_gfa =
  let sym_gfa = symbol_of_formula for_gfa in
  Group_for_symbol_symbol_v.name sym_gfa
;;
(* ***
let longname for_gfa =
  let sym_gfa = symbol_of_formula for_gfa in
  Group_for_symbol_symbol_v.longname sym_gfa
;;

let string_off for_gfa =
  let sym_gfa = symbol_of_formula for_gfa in
  Group_for_symbol_symbol_v.string_off sym_gfa
;;

let fullname for_gfa =
  let sym_gfa = symbol_of_formula for_gfa in
  Group_for_symbol_symbol_v.longname sym_gfa
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_gfa soi_gro =
  match sym_gfa with
  | Group_for_symbol_symbol_t.Group_for_symbol_body_symbol sym_cc1 ->
      Group_for_symbol_formula_t.Group_for_symbol_body_formula 
        (Group_for_symbol_body_formula_v.make sym_cc1 soi_gro)

  | Group_for_symbol_symbol_t.Group_for_symbol_footer_symbol sym_cc2 ->
      Group_for_symbol_formula_t.Group_for_symbol_footer_formula 
        (Group_for_symbol_footer_formula_v.make sym_cc2 soi_gro)

  | Group_for_symbol_symbol_t.Group_for_symbol_header_symbol sym_cc3 ->
      Group_for_symbol_formula_t.Group_for_symbol_header_formula 
        (Group_for_symbol_header_formula_v.make sym_cc3 soi_gro)
;;

(** {6 Retrieving.} *)

let retrieve tag_gfa =
  let soi_gro = Tag_v.sole_index_off_tag tag_gfa in
  let sym_gfa = Tag_v.entity_off_tag tag_gfa in
  make sym_gfa soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_symbol_formula for_gfa =
  match for_gfa with 
  | Group_for_symbol_formula_t.Group_for_symbol_body_formula for_cc1 ->
        Group_for_symbol_body_formula_v.camlline_tag_list_off_group_for_symbol_body_formula for_cc1

  | Group_for_symbol_formula_t.Group_for_symbol_footer_formula for_cc2 ->
        Group_for_symbol_footer_formula_v.camlline_tag_list_off_group_for_symbol_footer_formula for_cc2

  | Group_for_symbol_formula_t.Group_for_symbol_header_formula for_cc3 ->
        Group_for_symbol_header_formula_v.camlline_tag_list_off_group_for_symbol_header_formula for_cc3
;;

let camlline_tag_list_off_group_for_symbol_tag tag_gfa =
  let for_gfa = retrieve tag_gfa in
  camlline_tag_list_off_group_for_symbol_formula for_gfa
;;
    
(** {6 Iterating_for_formula_for_symbol} *)

let map f_of_tag_cal for_gfa = 
  match for_gfa with 
  | Group_for_symbol_formula_t.Group_for_symbol_body_formula for_cc1 ->
        Group_for_symbol_body_formula_v.map f_of_tag_cal for_cc1

  | Group_for_symbol_formula_t.Group_for_symbol_footer_formula for_cc2 ->
        Group_for_symbol_footer_formula_v.map f_of_tag_cal for_cc2

  | Group_for_symbol_formula_t.Group_for_symbol_header_formula for_cc3 ->
        Group_for_symbol_header_formula_v.map f_of_tag_cal for_cc3
;;

let iter f_of_tag_cal for_gfa = 
  match for_gfa with 
  | Group_for_symbol_formula_t.Group_for_symbol_body_formula for_cc1 ->
        Group_for_symbol_body_formula_v.iter f_of_tag_cal for_cc1

  | Group_for_symbol_formula_t.Group_for_symbol_footer_formula for_cc2 ->
        Group_for_symbol_footer_formula_v.iter f_of_tag_cal for_cc2

  | Group_for_symbol_formula_t.Group_for_symbol_header_formula for_cc3 ->
        Group_for_symbol_header_formula_v.iter f_of_tag_cal for_cc3
;;

let map2 f_of_tag_cal for_gfa1 for_gfa2 = 
  match (for_gfa1, for_gfa2) with
  | (Group_for_symbol_formula_t.Group_for_symbol_body_formula for_cc11, 
     Group_for_symbol_formula_t.Group_for_symbol_body_formula for_cc12) ->
         Group_for_symbol_body_formula_v.map2 f_of_tag_cal for_cc11 for_cc12
         
  | (Group_for_symbol_formula_t.Group_for_symbol_footer_formula for_cc21,
     Group_for_symbol_formula_t.Group_for_symbol_footer_formula for_cc22) ->
         Group_for_symbol_footer_formula_v.map2 f_of_tag_cal for_cc21 for_cc22

  | (Group_for_symbol_formula_t.Group_for_symbol_header_formula for_cc31, 
     Group_for_symbol_formula_t.Group_for_symbol_header_formula for_cc32) ->
         Group_for_symbol_header_formula_v.map2 f_of_tag_cal for_cc31 for_cc32

  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
        "both map2 arguments had the same Group type" 
        (Format.sprintf "couple (%s, %s)" (name for_gfa1) (name for_gfa2))
        "Check"
;;

let iter2 f_of_tag_cal for_gfa1 for_gfa2 = 
  match (for_gfa1, for_gfa2) with
  | (Group_for_symbol_formula_t.Group_for_symbol_body_formula for_cc11, 
     Group_for_symbol_formula_t.Group_for_symbol_body_formula for_cc12) ->
         Group_for_symbol_body_formula_v.iter2 f_of_tag_cal for_cc11 for_cc12
         
  | (Group_for_symbol_formula_t.Group_for_symbol_footer_formula for_cc21,
     Group_for_symbol_formula_t.Group_for_symbol_footer_formula for_cc22) ->
         Group_for_symbol_footer_formula_v.iter2 f_of_tag_cal for_cc21 for_cc22

  | (Group_for_symbol_formula_t.Group_for_symbol_header_formula for_cc31, 
     Group_for_symbol_formula_t.Group_for_symbol_header_formula for_cc32) ->
         Group_for_symbol_header_formula_v.iter2 f_of_tag_cal for_cc31 for_cc32
         
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
        "both iter2 arguments had the same Group type" 
        (Format.sprintf "couple (%s, %s)" (name for_gfa1) (name for_gfa2))
        "Check"
;;
