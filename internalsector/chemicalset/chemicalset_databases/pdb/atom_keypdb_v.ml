(* $Id: exp $ *)

let nam_cod = "Atom_keypdb_v";;
let octr_ppf = Format.formatter_of_out_channel Tools_v.oc_trace;;

(** {6 Making from ATOM Record.} *)

let print = Keypdb_v.print;;

let branch_level_pdb_of_recordpdb_atom arp =
  let bip_str = arp.Recordpdb_atom_t.branch_index_pdb in
  let bip = Index_pdb_v.branch_index_pdb_of_string bip_str in
  let idx_brn = Keypdb_t.Branch_index bip in
  let sym_brn = Keypdb_t.Branch_symbol in

  (smb_brn, idx_brn) 
;;

let block_level_pdb_of_recordpdb_atom arp =
  let rip_str = arp.Recordpdb_atom_t.remote_index_pdb in
  let rip_pbl = Index_pdb_v.remote_index_pdb_of_string rip_str in
  let idx_blk = Keypdb_t.Block_index rip_pbl in
  let sym_blk = Keypdb_t.Block_symbol in

  (smb_blk, idx_blk) 
;;

let atom_level_pdb_of_recordpdb_atom arp =
  let hip_str = arp.Recordpdb_atom_t.h_index_pdb in
  let idx_h = Index_pdb_v.h_index_pdb_of_string hip_str in
  let alt_str = arp.Recordpdb_atom_t.alternate_location_index_pdb in
  let idx_alt = Index_pdb_v.alternate_location_index_of_string alt_str in
  let asp_str = arp.Recordpdb_atom_t.atom_symbol in
  let sym_atm = Atom_name_v.atom_symbol_of_string asp_str in
  let sym_pat = Keypdb_t.Atom_name sym_atm in
  let idx_pat = Keypdb_t.Atom_index (idx_h, idx_alt) in
  (smb_pat, idx_pat) 
;;

let atom_partial_keypdb_of_recordpdb_atom arp =
  let lvl_pat = atom_level_pdb_of_recordpdb_atom arp in
  let lvl_blk = block_level_pdb_of_recordpdb_atom arp in
  let lvl_brn = branch_level_pdb_of_recordpdb_atom arp in
  let key_res = 
    Residue_keypdb_v.residue_partial_keypdb_of_recordpdb_atom arp in
  Keypdb_t.Level (lvl_pat, 
   Keypdb_t.Level (lvl_blk,  
    Keypdb_t.Level (lvl_brn, key_res)))
;;

(** {6 Making from Atom Path.} *)

let rec atom_partial_keypdb_of_atom_path = function
  | Path_t.Level ((lvl_atm),    
     Path_t.Level ((lvl_blk), 
      Path_t.Spine ((lvl_frg), 
       Path_t.Spine ((Path_t.Nterminal,
	       Path_t.Nterminal_symbol ((smb_ama, pst), sym_frg),
	       Path_t.Head),
        Path_t.Level ((lvl_plp),_))))) as pth_atm ->

	  Atom_keypdb_backbone_v.atom_partial_keypdb_of_atom_path pth_atm 

  | Path_t.Level ((lvl_atm),    
     Path_t.Level ((lvl_blk), 
      Path_t.Spine ((lvl_frg), 
       Path_t.Spine ((Path_t.Capeptide, _, _), 
        Path_t.Spine ((lvl_res),_))))) as pth_atm ->

	  Atom_keypdb_backbone_v.atom_partial_keypdb_of_atom_path pth_atm 

  | Path_t.Level ((lvl_atm),    
     Path_t.Level ((lvl_blk), 
      Path_t.Spine ((lvl_frg), 
       Path_t.Spine ((Path_t.Sidechain, _, _),
        Path_t.Spine ((lvl_res),_))))) as pth_atm ->

	  Atom_keypdb_sidechain_v.atom_partial_keypdb_of_atom_path pth_atm 

  | pth_atm -> begin print_error_path pth_atm 
	"atom_partial_keypdb_of_atom_path"; assert false end

and print_error_path pth_atm her =
  Format.fprintf Format.err_formatter 
  "@.@[<hov>%s.%s: --- Fatal Error ---@.\
  unknown path series of grain in path >%a<@.\
  please add this series to menu@]@."
  nam_cod her Path_v.print pth_atm
;;

