(* $Id: Exp $ *)

(** {3 Functions to handle an HEADER Record of a Pdb File} *)

(* adapt get_word to current Model and Record*)
let get_current_word str fld_lbl =
  let mdl_lbl = Provider_data_pdb_v.provide_model_label () in
  let rcd_lbl = Recordpdb_symbol_t.HEADER in
  let mrf_lbl = Model_fieldpdb_symbol_v.make mdl_lbl rcd_lbl fld_lbl in
  Recordpdb_v.get_word str mrf_lbl
;;

let header_record_of_string str =

  Recordpdb_v.record_label_checked "HEADER" str;
(*  Model_recordpdb_v.check_for_empty_character  current_model_label str;*)

(* slice str into words *)
  let rcd_nam_w = get_current_word str Fieldpdb_symbol_t.Record_label in
  let chm_spc_w = get_current_word str Fieldpdb_symbol_t.Chemical_species in
  let dat_w = get_current_word str Fieldpdb_symbol_t.Date in
  let id_pdb_w = get_current_word str Fieldpdb_symbol_t.Id_pdb in
  {
   Recordpdb_header_t.record_label = 
      Recordpdb_symbol_v.recordpdb_symbol_of_name  rcd_nam_w; 
   Recordpdb_header_t.chemical_species = 
   Tokenpdb_v.string_40_of_string  chm_spc_w;
   Recordpdb_header_t.date = Tokenpdb_v.date_9_of_string dat_w;
   Recordpdb_header_t.id_pdb = Tokenpdb_v.string_4_of_string id_pdb_w;
 }
;;

let string_of_header_record hdr_rcd =
  Utils_v.not_yet_implemented "string_of_header_record"
;; 

