(** {3 Camlline_for_symbol_uno_son_ofstring_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_symbol_uno_son_ofstring_value_v";
   "Needed-by : VGNR:Camlline_uno_son_ofstring_value_v";
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
    Camlline_for_symbol_uno_son_ofstring_formula_v.entity_tag_list_off_camlline_for_symbol_uno_son_ofstring_tag 
      tag_cfs 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_son_ofstring_symbol sym_cfs 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent_son = uno_off_list nam_cod "make" sym_cal sym_ent_l in

  match sym_cfs with
	
  | Camlline_for_symbol_uno_son_ofstring_symbol_t.Pipe_esstring_arrow_es_sarg ->
      (* Ex.: | "cluster_fromid" -> cluster_fromid s *)
      Format.sprintf "  | \"%s\" -> %s s" 
	(entity_name sym_ent_son) 
	(entity_name sym_ent_son) 

;;

(** {6 Making_of_value} *)

let make sym_cfs soi_cal =
  let str = string_of sym_cfs soi_cal in
  match sym_cfs with

  | Camlline_for_symbol_uno_son_ofstring_symbol_t.Pipe_esstring_arrow_es_sarg ->
     Camlline_for_symbol_uno_son_ofstring_value_t.Pipe_esstring_arrow_es_sarg str


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
  | Camlline_for_symbol_uno_son_ofstring_value_t.Pipe_esstring_arrow_es_sarg str -> str
;;

