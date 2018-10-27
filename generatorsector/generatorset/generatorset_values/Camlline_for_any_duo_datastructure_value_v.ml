(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_any_duo_datastructure_value_v";
   "Needed-by : VGNR:Camlline_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;
(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_cdd soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_datastructure_symbol sym_cdd 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in

  match sym_cdd with
  | Camlline_for_any_duo_datastructure_symbol_t.Pipe_a_b_datastructure_of_a_b_datastructure ->
      make_pipe_datastructure_camltype sym_ent_l    

;;

(** {6 Making_of_value} *)

let make sym_cdd soi_cal =
  let str = string_of sym_cdd soi_cal in
  match sym_cdd with
  | Camlline_for_any_duo_datastructure_symbol_t.Pipe_a_b_datastructure_of_a_b_datastructure ->
       Camlline_for_any_duo_datastructure_value_t.Pipe_a_b_datastructure_of_a_b_datastructure str
;;


(** {6 Retrieving} *)

let retrieve tag_cdd =
  let sym_cdd = Tag_v.entity_off_tag tag_cdd in
  let soi_cal = Tag_v.sole_index_off_tag tag_cdd in
  make sym_cdd soi_cal
;;

(** {6 String_offing} *)

let string_off val_cdd =
  match val_cdd with
  | Camlline_for_any_duo_datastructure_value_t.Pipe_a_b_datastructure_of_a_b_datastructure str -> str

;;
