(* $Id: abbreviations_documentation.ml,v 1.2 2007-09-19 19:20:17 colonna Exp $ *)

(** {3 Abbreviations used in Proteins.} *)

(** {3 Abbreviations used in Proteins.} *)

(** Rule ?
    as far as possible :
    - 3 letters
    - exclude vowels
    - some token may have several abbreviations
    - no token may share the same abbreviation.
    - four letters word stay as they are.
    - array abbreviation is obtained by suffixing element abbreviation with "_a"
    - list abbreviation is obtained by suffixing element abbreviation with "_l"
*)
(* one letter *)

(* two letters *)

(* three letters *)

let aip = "alternate_location_index_pdb";;
let bip = "branch_index_pdb";;
let cip = "chain_index_pdb";;
let hip = "h_index_pdb";;
let iip = "insertion_index_pdb";;
let rip = "remote_index_pdb";;

let pam = "aminoacid_pdb";;
let pat = "atom_pdb";;
let pdb = "Protein Data Bank";;
let reg = "Register";;

(* four letters without abbreviation *)

(* four letters abbreviations *)
let rcip = "residue_canonical_index_pdb";;
let desc = "description";;

(* five letters *)

(* six letters *)

let pdb_fn = "file_name_pdb";;
let sym_atm = "atom_symbol";;

(* seven letters *)

let alt_idx = "alternate_location_index_pdb";;
let alt_wgt = "alternate_location_weight_pdb";;
let atm_rcd = "recordpdb_atom";;
let hdr_rcd = "header_record";;

let lbl_mrf = "model_record_field_label";;

let ich_num = "pdb_insequence_number";;


let sym_ams_pdb = "aminoacid_symbol_pdb";;

let key_pat = "atom_keypdb";;
let pat_men = "atom_mention_pdb";;
let pat_nam = "atom_name_pdb";;
let pat_smb = "atom_symbol_pdb";;

let frm_plp_pdb = "polypeptide_formula_pdb";;
let pdb_chl = "polypeptide_label_pdb";;
let pdb_chn = "pdb_chain";;
let pdb_chs = "pdb_chain_symbol";;

let pdb_ptc = "particle_pdb";;

let pdb_rs  = "residue_pdb";;
let pdb_rsl = "residue_label_pdb";;
let pdb_rsm = "residue_mention_pdb";;
let pdb_rsn = "residue_name_pdb";;

let pdb_rcn = "recordpdb_symbol";;
let pdb_ssq = "sub_sequence_pdb";;
let pdb_sfm = "sub_formula_pdb";;

let tkn_idx = "token_index";;
let sqr_rcd = "recordpdb_seqres";;
let sub_seq = "sub_sequence";;

(* nine letters *)

(* ten letters *)

(* eleven letters *)


