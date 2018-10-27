(* $Id: Exp $ *)

let nam_cod = "Recordpdb_atom_v";;
let octr_ppf = Format.formatter_of_out_channel Tools_v.oc_trace;;

(** {3 Functions to handle an ATOM Record of a Pdb File} *)

(* adapt get_word to current Model and Record*)
let get_current_word str fld_lbl =
  let rcd_lbl = Recordpdb_symbol_t.ATOM in
  let mdl_lbl = Provider_data_pdb_v.provide_model_label () in
  let mrf_lbl = Model_fieldpdb_symbol_v.make mdl_lbl rcd_lbl fld_lbl in
  Recordpdb_v.get_word str mrf_lbl
;;

let atom_record_of_string  str =
  Recordpdb_v.record_label_checked  "ATOM"  str;    (* check input string *)

(*  
Model_recordpdb_v.check_for_empty_character  current_model_label  str;
*)

(* slice str into words *)
  let rcd_nam_w = get_current_word str Fieldpdb_symbol_t.Record_label in
  let atm_num_w = 
    get_current_word str Fieldpdb_symbol_t.Atom_serial_number in
  let h_idx_w = get_current_word str Fieldpdb_symbol_t.H_index_pdb in
  let atm_smb_w = get_current_word str Fieldpdb_symbol_t.Atom_name in
  let rmt_idx_w = get_current_word str Fieldpdb_symbol_t.Remote_index in
  let edg_idx_w = get_current_word str Fieldpdb_symbol_t.Branch_index in
  let alt_idx_w = 
    get_current_word str Fieldpdb_symbol_t.Atom_alternate_location_id in
  let res_smb_w = get_current_word str Fieldpdb_symbol_t.Aminoacid_symbol_pdb in
  let chn_lbl_w = get_current_word str Fieldpdb_symbol_t.Chain_index in
  let can_num_w = 
    get_current_word str Fieldpdb_symbol_t.Canonical_residue_number in
  let ins_idx_w = 
    get_current_word str Fieldpdb_symbol_t.Insertion_index_pdb in
  let x_w = get_current_word str Fieldpdb_symbol_t.X in
  let y_w = get_current_word str Fieldpdb_symbol_t.Y in
  let z_w = get_current_word str Fieldpdb_symbol_t.Z in
  let alt_wgt_w = 
    get_current_word str Fieldpdb_symbol_t.Alternate_location_weight in
  let b_fac_w = get_current_word str Fieldpdb_symbol_t.B_factor in 
  {
   Recordpdb_atom_t.record_label = Tokenpdb_v.string_6_of_string rcd_nam_w;  
   Recordpdb_atom_t.atom_number = Tokenpdb_v.integer_5_of_string  atm_num_w;
   Recordpdb_atom_t.h_index_pdb = Tokenpdb_v.string_1_of_string  h_idx_w;
   Recordpdb_atom_t.atom_symbol = Tokenpdb_v.string_1_of_string  atm_smb_w;
   Recordpdb_atom_t.remote_index_pdb = Tokenpdb_v.string_1_of_string  rmt_idx_w;
   Recordpdb_atom_t.branch_index_pdb = Tokenpdb_v.string_1_of_string  edg_idx_w ;
   Recordpdb_atom_t.alternate_location_index_pdb = 
   Tokenpdb_v.string_1_of_string  alt_idx_w;
   Recordpdb_atom_t.residue_symbol = Tokenpdb_v.string_3_of_string  res_smb_w;
   Recordpdb_atom_t.chain_index_pdb = Tokenpdb_v.string_1_of_string chn_lbl_w; 
   Recordpdb_atom_t.canonical_residue_number = 
      Tokenpdb_v.integer_4_of_string  can_num_w;
   Recordpdb_atom_t.insertion_index_pdb = 
      Tokenpdb_v.string_1_of_string  ins_idx_w;
   Recordpdb_atom_t.x = Tokenpdb_v.float_8_of_string  x_w;
   Recordpdb_atom_t.y = Tokenpdb_v.float_8_of_string  y_w;
   Recordpdb_atom_t.z = Tokenpdb_v.float_8_of_string  z_w;
   Recordpdb_atom_t.alternate_location_weight = 
   Tokenpdb_v.float_4_of_string  alt_wgt_w;
   Recordpdb_atom_t.b_factor = Tokenpdb_v.float_6_of_string  b_fac_w;
 }
;;

let string_of_atom_record atm_rcd =
  Utils_v.not_yet_implemented "string_of_atom_record"
;;
