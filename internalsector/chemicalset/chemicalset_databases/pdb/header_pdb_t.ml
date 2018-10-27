(* $Id: header_pdb.mli,v 1.5 2007-09-19 19:20:17 colonna Exp $ *)

type header_pdb = {
  record_label : Recordpdb_symbol_t.recordpdb_symbol;
  protein_name : protein_name_pdb; 
  id_pdb : id_pdb ;
  date_9 : Tokenpdb_t.date_9;
}
and protein_name_pdb = string
(** It is the protein chemical name. *)

and id_pdb = (Tokenpdb_t.integer_1 * Tokenpdb_t.string_3)
;;
(** An HEADER record contents 
  - the record name
  - the protein chemical name
  - the Pdb_Id 
  - the date. *)

type protein_complex_name = chemical_species list

and chemical_species = 
  | PROTEINASE
  | INHIBITOR
  | OXIDOREDUCTASE 
  | NAD_A
  | CHOH_D
;;



