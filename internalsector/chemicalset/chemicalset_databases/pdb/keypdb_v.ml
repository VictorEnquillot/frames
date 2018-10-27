(* $Id: Exp $ *)

let nam_cod = "Keypdb_v";;
let octr_ppf = Format.formatter_of_out_channel Tools_v.oc_trace;;


(** {6 Extracting.} *)

let key_level_pdb_of_keypdb = function
  | Keypdb_t.Top -> failwith "Top_has_no_level"
  | Keypdb_t.Partial_key -> failwith "Partial_key_has_no_level"
  | Keypdb_t.Level (lvl, key) -> lvl
;;

let key_upper_pdb_of_keypdb = function
  | Keypdb_t.Top -> failwith "Top_has_no_upper_level"
  | Keypdb_t.Partial_key -> failwith "Partial_key_has_no_upper_level"
  | Keypdb_t.Level (lvl, key) -> key
;;

let key_symbol_pdb_of_keypdb key =
  let lvl = key_level_pdb_of_keypdb key in
  let (ksp, kip) = lvl in
  ksp
;;

let key_index_pdb_of_keypdb key =
  let lvl = key_level_pdb_of_keypdb key in
  let (ksp, kip) = lvl in
  kip
;;

(** {6 Making.} *)

(** {9 Atom Key Pdb.} *)

let rec h_index_pdb_of_atom_level_path = function 
  |(Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.H), Path_t.Web Path_t.W_forth) ->
      Index_pdb_t.H_blank
  |(Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.H), Path_t.Web Path_t.W_left) ->
      Index_pdb_t.H_one
  |(Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.H), Path_t.Web Path_t.W_up) ->
      Index_pdb_t.H_two
  |(Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.H), Path_t.Web Path_t.W_right) ->
      Index_pdb_t.H_three
  |(Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.H), pth_idx) as pth_lvl -> 
      begin print_h_index_error pth_idx pth_lvl; assert false end
  | _ -> Index_pdb_t.H_blank

and print_h_index_error pth_idx pth_lvl =
    Format.fprintf (Format.err_formatter) 
    "@.@[<hov>%s.h_index_pdb_of_atom_level_path: --- Fatal Error ---@.\
   expecting hydrogen path_index W_forth W_left W_up W_right@.\
   found path_index >%a<.@. path_level %a@]@."
   nam_cod Path_v.print_index pth_idx Path_v.print_level pth_lvl;
;;

let make_atom_level_keypdb lvl_atm idx_alt =
  let sym_atm = Path_v.atom_symbol_of_atom_level lvl_atm in
  let idx_h = h_index_pdb_of_atom_level_path lvl_atm in

  (Keypdb_t.Atom_name sym_atm, Keypdb_t.Atom_index (idx_h, idx_alt))
;;

let atom_partial_keypdb_of_atom_pdb pat =
  pat.Atom_pdb_t.atom_partial_keypdb
;;

(** {6 Printing.} *)

let string_of_key_symbol_pdb = function
  | Keypdb_t.Atom_name asp -> 
      Atom_name_v.string_of_atom_symbol asp
  | Keypdb_t.Block_symbol -> "Block"   (* no block symbol in ATOM Record*)
  | Keypdb_t.Branch_symbol -> "Branch" (* no branch symbol in ATOM Record*)
  | Keypdb_t.Residue_symbol rsp ->
      Aminoacid_symbol_pdb_v.string_of_aminoacid_symbol_pdb rsp
  | Keypdb_t.Polypeptide_symbol psp ->
      Polypeptide_symbol_v.string_of_polypeptide_symbol psp
  | Keypdb_t.Molecule_symbol msp ->
     Molecule_symbol_v.string_of_molecule_symbol msp
  | Keypdb_t.Protein_symbol psp ->
     Protein_symbol_v.string_of_protein_symbol psp
;;

let print_key_symbol_pdb ppf ksp =
  Format.fprintf ppf "%s" (string_of_key_symbol_pdb ksp)
;;

let rec print_key_index_pdb ppf = function
  | Keypdb_t.Atom_index (idx_h, idx_alt) ->
      Format.fprintf ppf "(%a, %a)"
	Index_pdb_v.print_h_index_pdb idx_h
	Index_pdb_v.print_alternate_location_index_pdb idx_alt
  | Keypdb_t.Block_index rip -> 
      Index_pdb_v.print_remote_index_pdb ppf rip
  | Keypdb_t.Branch_index bip -> 
      print_key_branch_index_pdb ppf bip
  | Keypdb_t.Residue_index (i, iip) -> 
      print_key_residue_index_pdb ppf (i, iip)
  | Keypdb_t.Polypeptide_index pip -> 
      Polypeptide_identifier_v.print_chain_index ppf pip   
  | Keypdb_t.Molecule_index i -> 
      Format.fprintf ppf "%i" i
  | Keypdb_t.Can_index i -> 
      Format.fprintf ppf "%i" i 
	
and print_key_branch_index_pdb ppf key_bip =
  Index_pdb_v.print_branch_index_pdb ppf key_bip

and print_key_residue_index_pdb ppf key_rip =
  let (i, iip) = key_rip in
  Format.fprintf ppf "(%3i, %a)" i 
  Index_pdb_v.print_insertion_index_pdb iip
;;

let print_key_level ppf lvl =
  let (smb, idx) = lvl in
  Format.fprintf ppf "(%a, %a)" 
  print_key_symbol_pdb smb
  print_key_index_pdb idx
;;

let rec print ppf = function
  | Keypdb_t.Top -> Format.fprintf ppf "Top" 
  | Keypdb_t.Partial_key -> Format.fprintf ppf "Partial_key" 
  | Keypdb_t.Level (lvl, key_upp) -> 
      Format.fprintf ppf "@[(%a,@ %a)]@" 
      print_key_level lvl
      print key_upp
;;

let string_of_keypdb keypdb =
  print Format.str_formatter keypdb; Format.flush_str_formatter ()
;;
