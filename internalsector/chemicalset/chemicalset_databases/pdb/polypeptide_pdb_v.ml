(* $Id: Exp $ *)

let nam_cod = "Polypeptide_pdb_v";;
let oc_trace = Tools_v.oc_trace;;
let octr_ppf = Format.formatter_of_out_channel oc_trace;;

(** polypeptide_pdb_t_sequence. *)

let polypeptide_formula_pdb_of_polypeptide_sequence_pdb seq_plp =
  Array.map Residue_pdb_v.aminoacid_symbol_pdb_of_residue_pdb  seq_plp
;;

let polypeptide_sequence_pdb_of_polypeptide_pdb pdb_plp =
  pdb_plp.Polypeptide_pdb_t.polypeptide_sequence_pdb
;;

let polypeptide_formula_pdb_of_polypeptide_pdb pdb_plp =
  let seq_plp = polypeptide_sequence_pdb_of_polypeptide_pdb pdb_plp in
  Array.map Residue_pdb_v.aminoacid_symbol_pdb_of_residue_pdb seq_plp
;;

(* *** TAKEN_OUT


let polypeptide_sequence_pdb_of_chain_sequence seq =
  Array.map Aminoacid_symbol_pdb_v.aminoacid_pdb_of_amino_acid  seq
;;

let polypeptide_sequence_pdb_of_pdb_line_array  line_a =
  Array.fold_left (fun x line ->  
    Array.append x (Pdb_sub_sequences.sub_formula_pdb_of_line line) ) 
    [||] 
    line_a
;;

let polypeptide_sequence_pdb_of_seqres_records  sqr_rcd_l  =
  Array.of_list 
    (List.flatten (List.map (fun rcd -> 
      Array.to_list (Pdb_sub_sequences.sub_sequence_pdb_of_record_seqres  rcd))
	    sqr_rcd_l )
    )
;;

let polypeptide_sequence_pdb_of_string_array  str_a =
    Array.map  Aminoacid_symbol_pdb_v.of_anycase  str_a
;;

let polypeptide_sequence_pdb_of_one_word  word =
  let char_a = Tools_v.char_array_of_word (String.uppercase word) in
    Array.mapi (fun i char -> 
      Aminoacid_symbol_pdb_v.of_char (i+1) char) 
    char_a
;;

let polypeptide_sequence_pdb_of_pdb_chain  desc =
  let pdb_chn = desc.Polypeptide_pdb_t.residues in
  Array.map Residue_pdb_v.aminoacid_pdb_of_residue_pdb pdb_chn
;;

let labelled_chain_pdb_sequence_of_pdb_chain  chn_smb  pdb_chn =
  let chn_seq = polypeptide_sequence_pdb_of_pdb_chain  pdb_chn in
  (chn_smb, chn_seq)
;;

let labelled_chain_pdb_sequence_of_labelled_chain_pdb  pdb_ich =
  let (chn_smb, pdb_chn) = pdb_ich in
  let chn_seq = polypeptide_sequence_pdb_of_pdb_chain  pdb_chn in
  (chn_smb, chn_seq)
;;

let labelled_chain_pdb_sequence_of_pdb_chain  desc =
 let chn_smb = desc.Polypeptide_pdb_t.chain_index_pdb in
 let pdb_chn = desc.Polypeptide_pdb_t.residues in
 labelled_chain_pdb_sequence_of_pdb_chain  chn_smb  pdb_chn 
;;

let protein_sequence_of_pdb_chain pdb_chn =
  Array.map  Residue_pdb_v.to_amino_acid  pdb_chn
;;

let polypeptide_formula_pdb_of_chain_formula  chn_frm =
  Array.map
    Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_aminoacid_symbol 
    chn_frm
;;

let polypeptide_formula_pdb_of_chain_symbol  chn_smb =
   let chn_frm = Chain_symbols.chain_formula_of_chain_symbol  chn_smb in
    polypeptide_formula_pdb_of_chain_formula chn_frm
;;

let polypeptide_formula_pdb_of_polypeptide_sequence_pdb  pdb_chn_seq =
  Array.map 
    Residue_pdb_v.aminoacid_symbol_pdb_of_residue_pdb  
    pdb_chn_seq
;;

let chain_formula_of_polypeptide_formula_pdb  chn_frm =
  Array.map  
    Aminoacid_symbol_pdb_v.aminoacid_symbol_of_aminoacid_symbol_pdb  chn_frm
;;
*************** *)

(** {6 polypeptide_pdb_t_formula.} *)

let polypeptide_formula_pdb_of_one_word  word = 
  let char_a = Tools_v.char_array_of_word (String.uppercase word) in
    Array.map  Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_char  char_a
;;

let polypeptide_formula_pdb_of_string_array  str_a =
  Array.map  Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_anycase  str_a
;;

let polypeptide_formula_pdb_of_pdb_chain  pdb_chn =
  Array.map 
    Residue_pdb_v.aminoacid_symbol_pdb_of_residue_pdb  
    pdb_chn.Polypeptide_pdb_t.polypeptide_sequence_pdb 
;;

let polypeptide_formula_pdb_of_protein_symbol sym_prn =
  Utils_v.not_yet_implemented "Polypeptide_pdb_v.polypeptide_formula_pdb_of_protein_symbol"
;;

(* *** TODO TAKEN_OUT
let make_polypeptide_sequence_pdb chn_smb pdb_num  ins_idx pdb_chn_fml =
  Array.mapi (fun i sym_ams_pdb -> 
      Residue_pdb_v.make 
      sym_ams_pdb chn_lbl can_num ins_idx alt_idx alt_wgt ich_num id_pdb 
) pdb_chn_fml
;;


(** {6 polypeptide_pdb_t_symbol.} *)

let pdb_chain_symbol_of_labelled_chain_pdb  pdb_lbl_chn =
  let (chn_smb, pdb_chn) = pdb_lbl_chn in
  let frm_plp_pdb = polypeptide_formula_pdb_of_pdb_chain  pdb_chn in
  (chn_smb, frm_plp_pdb)
;;

let pdb_chain_symbol_of_pdb_chain  pdb_chn =
  let pdb_chl = pdb_chn.Polypeptide_pdb_t.polypeptide_label_pdb in
  let pdb_chn_seq = pdb_chn.Polypeptide_pdb_t.polypeptide_sequence_pdb in
  let frm_plp_pdb = polypeptide_formula_pdb_of_polypeptide_sequence_pdb pdb_chn_seq in
   (pdb_chl,  frm_plp_pdb)
;;

(** {9 Conversion with Frames.} *)

let polypeptide_formula_pdb_of_chain_formula  frml =
  Array.map 
    Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_aminoacid_symbol  frml
;;

let polypeptide_formula_pdb_of_chain_symbol  chn_smb =
  let chn_frm = Chain_symbols.chain_formula_of_chain_symbol  chn_smb in 
  polypeptide_formula_pdb_of_chain_formula  chn_frm
;;
*** *)

(** {9 Conversion from string.} *)

let string_of_polypeptide_formula_pdb  chn_frm =
  let str_a = Array.map  
      Aminoacid_symbol_pdb_v.string_of_aminoacid_symbol_pdb  chn_frm in
  Tools_v.string_flat_of_string_list (Array.to_list  str_a)
;;

let one_word_of_polypeptide_formula_pdb  frml = 
  let one_letter_code_array = 
    Array.map (fun s -> 
      Aminoacid_symbol_pdb_v.one_letter_code_pdb_of_aminoacid_symbol_pdb s) 
      frml
  in 
  let char_array = 
    Array.map  
      Aminoacid_symbol_pdb_v.char_of_one_letter_code_pdb 
      one_letter_code_array in
    Tools_v.word_of_char_array  char_array 
;;

(** {6 Printing.} *)

let print_polypeptide_formula_pdb  ppf  frm_plp_pdb =
  Array.iter (fun sym_ams_pdb -> 
    Format.fprintf ppf "@ %a" 
      Aminoacid_symbol_pdb_v.print_aminoacid_symbol_pdb sym_ams_pdb) frm_plp_pdb
;;
 
let print_polypeptide_sequence_pdb ppf pdb_plp_seq =
  Array.iter (fun pdb_res -> 
    Format.fprintf ppf "@ %a" 
      Residue_pdb_v.print pdb_res) pdb_plp_seq
;;

let print  ppf  pdb_plp =
    Format.fprintf  ppf  "@[<hov>keypdb %a@.sequence %a@]" 
    Keypdb_v.print pdb_plp.Polypeptide_pdb_t.polypeptide_keypdb
    print_polypeptide_sequence_pdb 
    pdb_plp.Polypeptide_pdb_t.polypeptide_sequence_pdb
;;

let polypeptide_formula_pdb_of_string_array  str_a =
  Array.map 
    Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_string  
    str_a
;;

let residue_pdb_nth_of_pdb_chain num pdb_chn =
  if num < 1 
  then failwith ("Polypeptide_pdb_v.residue_pdb_nth_of_pdb_chain: argument num < 1")
  else 
    try Array.get  pdb_chn.Polypeptide_pdb_t.polypeptide_sequence_pdb  (num-1)
    with Invalid_argument "index out of bounds" -> 
      raise (Failure "sequence too short")
;;

