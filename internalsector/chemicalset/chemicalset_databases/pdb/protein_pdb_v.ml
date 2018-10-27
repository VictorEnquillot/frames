(* $Id: Exp $ *)

let nam_cod = "Protein_pdb_v";;
let octr_ppf = Format.formatter_of_out_channel Tools_v.oc_trace;;

(** {6 Making.} *)

let make_protein_key sym_prn idx key_upp =
   Keypdb_t.Level ((
     Keypdb_t.Protein_symbol sym_prn, Keypdb_t.Can_index idx), key_upp)
;;

(** {6 Extracting.} *)
 
let rec protein_symbol_of_protein_keypdb = function
  | Keypdb_t.Top      
  | Keypdb_t.Partial_key as keypdb -> begin
      print_error_keypdb keypdb; assert false 
  end
  | Keypdb_t.Level ((smb_prn, _), _) -> sym_prn 

and print_error_keypdb keypdb =
  Format.fprintf (Format.err_formatter) 
  "@.@[<hov>%s.protein_symbol_of_protein_keypdb: --- Fatal Error ---@.\
  no Protein level in keypdb@ %a@]@."
  nam_cod Keypdb_v.print keypdb;
;;
(* ******************

let protein_formula_of_protein_keypdb key_prp =
  let sym_prn = protein_symbol_of_protein_keypdb key_prp in
  Protein_v.protein_formula_of_protein_symbol sym_prn
;;

let protein_sequence_pdb_of_protein_pdb prp = 
  let pdb_plp_a = prp.Protein_pdb_t.content in
  Array.map  
    Polypeptide_pdb_v.polypeptide_sequence_pdb_of_polypeptide_pdb
    pdb_plp_a
;;

let protein_formula_pdb_of_protein_pdb prp =
 let pdb_plp_a = prp.Protein_pdb_t.content in
  Array.map  
    Polypeptide_pdb_v.polypeptide_formula_pdb_of_polypeptide_pdb
    pdb_plp_a
;;

let print_protein_keypdb = Keypdb_v.print
;;


let atom_pdb_list_of_atom_pdb_records  rcd_a_l  =
  List.map  Atom_pdb_v.atom_pdb_of_atom_pdb_record  rcd_a_l
;;

let particle_pdb_list_of_atom_pdb_records_and_id_pdb  rcd_a_l  id_pdb =
  let desc_l = atom_pdb_list_of_atom_pdb_records  rcd_a_l in 
  List.map  
    (fun x -> 
      Particle_pdb_t.particle_pdb_of_description_and_id_pdb x id_pdb)  
    desc_l
;;

let rec print_description  ppf  desc = 
  Format.fprintf ppf 

  "@[protein_name >%s<@ \
  id_pdb >%a<@ \
  pdb_chains %a@ @]" 

  desc.Protein_pdb_t.protein_name 
  Tokenpdb_v.print_string_4  desc.Protein_pdb_t.id_pdb
  print_labelled_chain_pdbs  desc.Protein_pdb_t.labelled_chain_pdbs

and print_labelled_chain_pdbs  ppf  pdb_ich_a =
  Array.iter (fun  ich  ->
    Format.fprintf  ppf  "@[<hov>%a @]" Polypeptide_pdb_v.print_labelled_chain ich) 
    pdb_ich_a
;;

let read_protein_description_of_file_name_pdb  pdb_fn =
Utils_v.not_yet_implemented "Protein_pdb_v.read"

let file_pdb_cnt = File_format_t.read ib 

  read_protein_name
  Header_pdb_v.read_id_pdb
  read_pdb_chains

and read_protein_name  

and read_pdb_chains 
;;
********************* *)
