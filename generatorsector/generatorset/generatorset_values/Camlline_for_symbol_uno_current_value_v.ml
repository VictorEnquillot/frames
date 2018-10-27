(** {3 Camlline_for_symbol_uno_current_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_symbol_uno_current_value_v";
   "Needed-by : VGNR:Camlline_uno_current_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_cfs soi_cal =
  let tag_cfs = Tag_v.make sym_cfs soi_cal in
  let tag_ent_l = 
    Camlline_for_symbol_uno_current_formula_v.entity_tag_list_off_camlline_for_symbol_uno_current_tag 
      tag_cfs 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_current_symbol sym_cfs 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in

  match sym_cfs with
  | Camlline_for_symbol_uno_current_symbol_t.Pipe_string_arrow_ec ->
      (* Ex.: | str -> Atom_symbol_v.o_c *)
      Format.sprintf "  | str -> %s" 
	(entity_name sym_ent) 

;;

(** {6 Making_of_value} *)

let make sym_cfs soi_cal =
  let str = string_of sym_cfs soi_cal in
  match sym_cfs with
  | Camlline_for_symbol_uno_current_symbol_t.Pipe_string_arrow_ec ->
     Camlline_for_symbol_uno_current_value_t.Pipe_string_arrow_ec str

;;

(** {6 Retrieving} *)

let retrieve tag_cfs =
  let sym_cfs = Tag_v.entity_off_tag tag_cfs in
  let soi_cal = Tag_v.sole_index_off_tag tag_cfs in
  make sym_cfs soi_cal
;;

(** {6 String_offing} *)

let string_off val_cfs =
  match val_cfs with
  | Camlline_for_symbol_uno_current_value_t.Pipe_string_arrow_ec str -> str
;;

