(** {3 The functionalities to get Pdb Sequences from Frames Polypeptide.} *)

let nam_cod = "Polypeptide_sequence_provider_from_pdb_v";;


let chain_sequencepdb_of_polypeptide_symbol sym_plp =
  let sym_enp = 
    Entrypdb_symbol_provider_v.entrypdb_symbol_off_polypeptide_symbol 
      sym_plp 
  in
  let sym_cid = 
    Polypeptide_symbol_v.chain_symbol_off_polypeptide_symbol 
      sym_plp 
  in
  let cha_cid = Chain_symbol_v.char_off sym_cid in

  Protein_sequencepdb_v.chain_sequencepdb_of_entrypdb_symbol_of_chain_idpdb
    sym_enp cha_cid 
;;

let molecule_aminoacid_symbol_of_residuepdb_symbol sym_res =
  let nam_res = Residuepdb_symbol_v.name sym_res in
  Molecule_aminoacid_symbol_v.make nam_res 
;;

let provide sym_plp =
  let csq = chain_sequencepdb_of_polypeptide_symbol sym_plp in
  let sym_res_l = Chain_sequencepdb_v.residuepdb_symbol_list_off_chain_sequencepdb csq in 
  List.map molecule_aminoacid_symbol_of_residuepdb_symbol sym_res_l
;;
