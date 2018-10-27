(** {3 Section_for_symbol_header_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Section_for_symbol_header_formula_v";
   "Needed-by : FGNR:Section_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlparagraph";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ssh = 
  match for_ssh with
  | Section_for_symbol_header_formula_t.Section_for_symbol_header_constant_formula for_cc1 ->
      Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol
        (Section_for_symbol_header_constant_formula_v.symbol_of_formula for_cc1)

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_current_son_top_formula for_cc2 ->
      Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_son_top_symbol
        (Section_for_symbol_header_current_son_top_formula_v.symbol_of_formula for_cc2)

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_current_top_formula for_cc3 ->
      Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_top_symbol
        (Section_for_symbol_header_current_top_formula_v.symbol_of_formula for_cc3)

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_son_formula for_cc4 ->
      Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_symbol
        (Section_for_symbol_header_son_formula_v.symbol_of_formula for_cc4)

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_son_top_formula for_cc5 ->
      Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol
        (Section_for_symbol_header_son_top_formula_v.symbol_of_formula for_cc5)






;;

(** {6 Naming_for_formula} *)

let name for_ssh =
  let sym_ssh = symbol_of_formula for_ssh in
  Section_for_symbol_header_symbol_v.name sym_ssh
;;
(* ***
let longname for_ssh =
  let sym_ssh = symbol_of_formula for_ssh in
  Section_for_symbol_header_symbol_v.longname sym_ssh
;;

let string_off for_ssh =
  let sym_ssh = symbol_of_formula for_ssh in
  Section_for_symbol_header_symbol_v.string_off sym_ssh
;;

let fullname for_ssh =
  let sym_ssh = symbol_of_formula for_ssh in
  Section_for_symbol_header_symbol_v.longname sym_ssh
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_ssh soi_sec =
  match sym_ssh with 
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol sym_cc1 ->
      Section_for_symbol_header_formula_t.Section_for_symbol_header_constant_formula 
        (Section_for_symbol_header_constant_formula_v.make sym_cc1 soi_sec)

  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_son_top_symbol sym_cc2 ->
      Section_for_symbol_header_formula_t.Section_for_symbol_header_current_son_top_formula 
        (Section_for_symbol_header_current_son_top_formula_v.make sym_cc2 soi_sec)

  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_top_symbol sym_cc3 ->
      Section_for_symbol_header_formula_t.Section_for_symbol_header_current_top_formula 
        (Section_for_symbol_header_current_top_formula_v.make sym_cc3 soi_sec)

  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_symbol sym_cc4 ->
      Section_for_symbol_header_formula_t.Section_for_symbol_header_son_formula 
        (Section_for_symbol_header_son_formula_v.make sym_cc4 soi_sec)

  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol sym_cc5 ->
      Section_for_symbol_header_formula_t.Section_for_symbol_header_son_top_formula 
        (Section_for_symbol_header_son_top_formula_v.make sym_cc5 soi_sec)




;;

(** {6 Retrieving} *)

let retrieve tag_ssh =
  let soi_sec = Tag_v.sole_index_off_tag tag_ssh in
  let sym_ssh = Tag_v.entity_off_tag tag_ssh in
  make sym_ssh soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_symbol_header_formula for_ssh =
  match for_ssh with 
  | Section_for_symbol_header_formula_t.Section_for_symbol_header_constant_formula for_cc1 ->
        Section_for_symbol_header_constant_formula_v.group_tag_list_off_section_for_symbol_header_constant_formula for_cc1

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_current_son_top_formula for_cc2 ->
        Section_for_symbol_header_current_son_top_formula_v.group_tag_list_off_section_for_symbol_header_current_son_top_formula for_cc2

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_current_top_formula for_cc3 ->
        Section_for_symbol_header_current_top_formula_v.group_tag_list_off_section_for_symbol_header_current_top_formula for_cc3

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_son_formula for_cc4 ->
        Section_for_symbol_header_son_formula_v.group_tag_list_off_section_for_symbol_header_son_formula for_cc4

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_son_top_formula for_cc5 ->
        Section_for_symbol_header_son_top_formula_v.group_tag_list_off_section_for_symbol_header_son_top_formula for_cc5







;;

let group_tag_list_off_section_for_symbol_header_tag tag_ssh =
  let for_ssh = retrieve tag_ssh in
  group_tag_list_off_section_for_symbol_header_formula for_ssh
;;
    
let camlline_tag_list_off_section_for_symbol_header_formula for_ssh =
  let tag_gro_l = 
    group_tag_list_off_section_for_symbol_header_formula 
      for_ssh 
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

let camlline_tag_list_off_section_for_symbol_header_tag tag_ssh =
  let for_ssh = retrieve tag_ssh in
  camlline_tag_list_off_section_for_symbol_header_formula for_ssh
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_ssh = 
  match for_ssh with 
  | Section_for_symbol_header_formula_t.Section_for_symbol_header_constant_formula for_cc1 ->
        Section_for_symbol_header_constant_formula_v.map f_of_tag_gro for_cc1

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_current_son_top_formula for_cc2 ->
        Section_for_symbol_header_current_son_top_formula_v.map f_of_tag_gro for_cc2

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_current_top_formula for_cc3 ->
        Section_for_symbol_header_current_top_formula_v.map f_of_tag_gro for_cc3

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_son_formula for_cc4 ->
        Section_for_symbol_header_son_formula_v.map f_of_tag_gro for_cc4

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_son_top_formula for_cc5 ->
        Section_for_symbol_header_son_top_formula_v.map f_of_tag_gro for_cc5







;;

let iter f_of_tag_gro for_ssh = 
  match for_ssh with 
  | Section_for_symbol_header_formula_t.Section_for_symbol_header_constant_formula for_cc1 ->
        Section_for_symbol_header_constant_formula_v.iter f_of_tag_gro for_cc1

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_current_son_top_formula for_cc2 ->
        Section_for_symbol_header_current_son_top_formula_v.iter f_of_tag_gro for_cc2

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_current_top_formula for_cc3 ->
        Section_for_symbol_header_current_top_formula_v.iter f_of_tag_gro for_cc3

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_son_formula for_cc4 ->
        Section_for_symbol_header_son_formula_v.iter f_of_tag_gro for_cc4

  | Section_for_symbol_header_formula_t.Section_for_symbol_header_son_top_formula for_cc5 ->
        Section_for_symbol_header_son_top_formula_v.iter f_of_tag_gro for_cc5







;;

let map2 f_of_tag_gro for_ssh1 for_ssh2 = 
  match (for_ssh1, for_ssh2) with
  | (Section_for_symbol_header_formula_t.Section_for_symbol_header_constant_formula for_cc11, 
     Section_for_symbol_header_formula_t.Section_for_symbol_header_constant_formula for_cc12) ->
	 Section_for_symbol_header_constant_formula_v.map2 f_of_tag_gro for_cc11 for_cc12
	 
  | (Section_for_symbol_header_formula_t.Section_for_symbol_header_current_son_top_formula for_cc21,
     Section_for_symbol_header_formula_t.Section_for_symbol_header_current_son_top_formula for_cc22) ->
	 Section_for_symbol_header_current_son_top_formula_v.map2 f_of_tag_gro for_cc21 for_cc22

  | (Section_for_symbol_header_formula_t.Section_for_symbol_header_current_top_formula for_cc31, 
     Section_for_symbol_header_formula_t.Section_for_symbol_header_current_top_formula for_cc32) ->
	 Section_for_symbol_header_current_top_formula_v.map2 f_of_tag_gro for_cc31 for_cc32
	 
  | (Section_for_symbol_header_formula_t.Section_for_symbol_header_son_formula for_cc41,
     Section_for_symbol_header_formula_t.Section_for_symbol_header_son_formula for_cc42) ->
	 Section_for_symbol_header_son_formula_v.map2 f_of_tag_gro for_cc41 for_cc42

  | (Section_for_symbol_header_formula_t.Section_for_symbol_header_son_top_formula for_cc51, 
     Section_for_symbol_header_formula_t.Section_for_symbol_header_son_top_formula for_cc52) ->
	 Section_for_symbol_header_son_top_formula_v.map2 f_of_tag_gro for_cc51 for_cc52
	 

	 

	 


  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Section type" 
	(Format.sprintf "couple (%s, %s)" (name for_ssh1) (name for_ssh2))
	"Check"
;;

let iter2 f_of_tag_gro for_ssh1 for_ssh2 = 
  match (for_ssh1, for_ssh2) with
  | (Section_for_symbol_header_formula_t.Section_for_symbol_header_constant_formula for_cc11, 
     Section_for_symbol_header_formula_t.Section_for_symbol_header_constant_formula for_cc12) ->
	 Section_for_symbol_header_constant_formula_v.iter2 f_of_tag_gro for_cc11 for_cc12
	 
  | (Section_for_symbol_header_formula_t.Section_for_symbol_header_current_son_top_formula for_cc21,
     Section_for_symbol_header_formula_t.Section_for_symbol_header_current_son_top_formula for_cc22) ->
	 Section_for_symbol_header_current_son_top_formula_v.iter2 f_of_tag_gro for_cc21 for_cc22

  | (Section_for_symbol_header_formula_t.Section_for_symbol_header_current_top_formula for_cc31, 
     Section_for_symbol_header_formula_t.Section_for_symbol_header_current_top_formula for_cc32) ->
	 Section_for_symbol_header_current_top_formula_v.iter2 f_of_tag_gro for_cc31 for_cc32
	 
  | (Section_for_symbol_header_formula_t.Section_for_symbol_header_son_formula for_cc41,
     Section_for_symbol_header_formula_t.Section_for_symbol_header_son_formula for_cc42) ->
	 Section_for_symbol_header_son_formula_v.iter2 f_of_tag_gro for_cc41 for_cc42

  | (Section_for_symbol_header_formula_t.Section_for_symbol_header_son_top_formula for_cc51, 
     Section_for_symbol_header_formula_t.Section_for_symbol_header_son_top_formula for_cc52) ->
	 Section_for_symbol_header_son_top_formula_v.iter2 f_of_tag_gro for_cc51 for_cc52
	 

	 

	 


  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Section type" 
	(Format.sprintf "couple (%s, %s)" (name for_ssh1) (name for_ssh2))
	"Check"
;;

