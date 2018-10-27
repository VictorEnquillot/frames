(** {3 Usagefile_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Usagefile_formula_v";
   "Needed-by : FGNR:";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Item";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_usf = 
  match for_usf with
  | Usagefile_formula_t.Usagefile_for_formula_formula for_cc1 ->
      Usagefile_symbol_t.Usagefile_for_formula_symbol
        (Usagefile_for_formula_formula_v.symbol_of_formula for_cc1)

  | Usagefile_formula_t.Usagefile_for_symbol_formula for_cc2 ->
      Usagefile_symbol_t.Usagefile_for_symbol_symbol
        (Usagefile_for_symbol_formula_v.symbol_of_formula for_cc2)

;;

(** {6 Naming_for_formula} *)

let name for_usf =
  let sym_usf = symbol_of_formula for_usf in
  Usagefile_symbol_v.name sym_usf
;;
(* ***
let longname for_usf =
  let sym_usf = symbol_of_formula for_usf in
  Usagefile_symbol_v.longname sym_usf
;;

let string_off for_usf =
  let sym_usf = symbol_of_formula for_usf in
  Usagefile_symbol_v.string_off sym_usf
;;

let fullname for_usf =
  let sym_usf = symbol_of_formula for_usf in
  Usagefile_symbol_v.longname sym_usf
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_usf soi_ite =
  match sym_usf with 
  | Usagefile_symbol_t.Usagefile_for_formula_symbol sym_cc1 ->
      Usagefile_formula_t.Usagefile_for_formula_formula 
        (Usagefile_for_formula_formula_v.make sym_cc1 soi_ite)

  | Usagefile_symbol_t.Usagefile_for_symbol_symbol sym_cc1 ->
      Usagefile_formula_t.Usagefile_for_symbol_formula 
        (Usagefile_for_symbol_formula_v.make sym_cc1 soi_ite)

;;

(** {6 Retrieving} *)

let retrieve tag_usf =
  let soi_ite = Tag_v.sole_index_off_tag tag_usf in
  let sym_usf = Tag_v.entity_off_tag tag_usf in
  make sym_usf soi_ite 
;; 

(** {6 Builder_tag_listing} *)

let item_tag_list_off_usagefile_formula for_usf =
  match for_usf with 
  | Usagefile_formula_t.Usagefile_for_formula_formula for_cc1 ->
      Usagefile_for_formula_formula_v.item_tag_list_off_usagefile_for_formula_formula for_cc1

  | Usagefile_formula_t.Usagefile_for_symbol_formula for_cc1 ->
        Usagefile_for_symbol_formula_v.item_tag_list_off_usagefile_for_symbol_formula for_cc1
;;

let item_tag_list_off_usagefile_tag tag_usf =
  let for_usf = retrieve tag_usf in
  item_tag_list_off_usagefile_formula for_usf
;;

let camlline_tag_list_off_usagefile_formula for_usf =
  let tag_ite_l = 
    item_tag_list_off_usagefile_formula 
      for_usf 
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

let camlline_tag_list_off_usagefile_tag tag_usf =
  let for_usf = retrieve tag_usf in
  camlline_tag_list_off_usagefile_formula for_usf
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_ite for_usf = 
  match for_usf with 
  | Usagefile_formula_t.Usagefile_for_formula_formula for_cc1 ->
        Usagefile_for_formula_formula_v.map f_of_tag_ite for_cc1

  | Usagefile_formula_t.Usagefile_for_symbol_formula for_cc1 ->
        Usagefile_for_symbol_formula_v.map f_of_tag_ite for_cc1

;;

let iter f_of_tag_ite for_usf = 
  match for_usf with 
  | Usagefile_formula_t.Usagefile_for_formula_formula for_cc1 ->
        Usagefile_for_formula_formula_v.iter f_of_tag_ite for_cc1

  | Usagefile_formula_t.Usagefile_for_symbol_formula for_cc1 ->
        Usagefile_for_symbol_formula_v.iter f_of_tag_ite for_cc1
;;

let map2 f_of_tag_ite for_usf1 for_usf2 = 
  match (for_usf1, for_usf2) with
  | (Usagefile_formula_t.Usagefile_for_formula_formula for_cc11, 
     Usagefile_formula_t.Usagefile_for_formula_formula for_cc12) ->
	 Usagefile_for_formula_formula_v.map2 f_of_tag_ite for_cc11 for_cc12
	 
  | (Usagefile_formula_t.Usagefile_for_symbol_formula for_cc11, 
     Usagefile_formula_t.Usagefile_for_symbol_formula for_cc12) ->
	 Usagefile_for_symbol_formula_v.map2 f_of_tag_ite for_cc11 for_cc12
	 
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Usagefile type" 
	(Format.sprintf "couple (%s, %s)" (name for_usf1) (name for_usf2))
	"Check"
;;

let iter2 f_of_tag_ite for_usf1 for_usf2 = 
  match (for_usf1, for_usf2) with
  | (Usagefile_formula_t.Usagefile_for_formula_formula for_cc11, 
     Usagefile_formula_t.Usagefile_for_formula_formula for_cc12) ->
	 Usagefile_for_formula_formula_v.iter2 f_of_tag_ite for_cc11 for_cc12
	 
  | (Usagefile_formula_t.Usagefile_for_symbol_formula for_cc11, 
     Usagefile_formula_t.Usagefile_for_symbol_formula for_cc12) ->
	 Usagefile_for_symbol_formula_v.iter2 f_of_tag_ite for_cc11 for_cc12
	 
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Usagefile type" 
	(Format.sprintf "couple (%s, %s)" (name for_usf1) (name for_usf2))
	"Check"
;;

