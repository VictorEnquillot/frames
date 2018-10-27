(* $Id: exp $ *)

let nam_cod = "Atom_keypdb_sidechain_v";;
let oc_trace = Tools_v.oc_trace;;
let octr_ppf = Format.formatter_of_out_channel oc_trace;;

(** {6 Making from ATOM Record.} *)

(** {6 Making from Path.} *)

let rec block_level_keypdb_of_block_path pth_blk =
  let rip = remote_index_pdb_of_block_path pth_blk in
  (Keypdb_t.Block_symbol, Keypdb_t.Block_index rip)

and remote_index_pdb_of_block_path pth_blk = 
  let pth_idx = 
    Path_v.extract_index_of_grain_of_path Path_t.Block pth_blk in
  match pth_idx with
    | Path_t.Alone -> 
	Index_pdb_t.Remote_blank 
    | Path_t.Head -> 
	Index_pdb_t.Remote_B
    | Path_t.Vertebra idx_vrb -> 
	Index_pdb_v.remote_index_pdb_of_int (idx_vrb +2)         
    | Path_t.Tail -> 
	let idx_tl =   (* *** IRP *)
          let pth_frg = Path_v.extract_uppath_of_path pth_blk in
          let frs = Provider_fragment_site_v.provide pth_frg in
	  Fragment_site_v.count_block_site_of_fragment_site frs in          
	Index_pdb_v.remote_index_pdb_of_int (idx_tl +1)          
    | _ -> begin print_error_path_index pth_idx 
	  "remote_index_pdb_of_block_path pth_blk"; assert false end 
 
and print_error_path_index pth_idx her =
    Format.fprintf Format.err_formatter 
   "@.@[<hov>%s.%s: --- Fatal Error ---@.\
   Block path_index >%a< is not defined.@.check menu.@]@."
   nam_cod her Path_v.print_index pth_idx
;;

let branch_level_keypdb_of_atom_path pth_atm =  (* count Left or Right *)
  let brn_num = Path_v.branch_count_of_path pth_atm in 
   let rmi = Index_pdb_v.branch_index_pdb_of_int brn_num in
   (Keypdb_t.Branch_symbol, Keypdb_t.Branch_index rmi)
;;

let rec atom_partial_keypdb_of_atom_path = function
  | Path_t.Level (lvl_atm,    (* Nterminal sidechain *)
     (Path_t.Level (lvl_blk, 
      Path_t.Spine (lvl_frg_sdc, 
        Path_t.Left (lvl_sdc,
         Path_t.Spine (lvl_frg_ntl,
          (Path_t.Spine ((Path_t.Nterminal, _,_), _) 
	     as pth_ntl) )))) 
	         as pth_blk )) 
		    as pth_atm ->

	let idx_alt = 
	    Provider_data_pdb_v.provide_alternate_location_index pth_atm in 
	  let lvl_pat = 
	    Keypdb_v.make_atom_level_keypdb lvl_atm idx_alt in
	  let lvl_pbl = block_level_keypdb_of_block_path pth_blk in
	  let lvl_prs = 
   Residue_keypdb_v.residue_level_keypdb_of_nterminal_sidechain_path pth_ntl in
	  
	  Keypdb_t.Level (lvl_pat,
	   Keypdb_t.Level (lvl_pbl,
	    Keypdb_t.Level (lvl_prs, Keypdb_t.Partial_key)))

  | Path_t.Level ((lvl_atm),    (* Sidechain *)
     (Path_t.Level ((lvl_blk), 
      Path_t.Spine ((lvl_frg), 
       (Path_t.Left ((lvl_sdc), pth_res) 
	  as pth_sdc) )) 
	    as pth_blk) ) 
              as pth_atm -> 

	 let idx_alt = 
	   Provider_data_pdb_v.provide_alternate_location_index pth_atm in 
	  let lvl_pat = 
	    Keypdb_v.make_atom_level_keypdb lvl_atm idx_alt in

	 let lvl_pbl = block_level_keypdb_of_block_path pth_blk in
	 let lvl_pbr = branch_level_keypdb_of_atom_path pth_atm in
	 let lvl_prs =

  Residue_keypdb_v.residue_level_keypdb_of_sidechain_path pth_sdc in

   Keypdb_t.Level (lvl_pat,
    Keypdb_t.Level (lvl_pbl,
     Keypdb_t.Level (lvl_pbr,
      Keypdb_t.Level (lvl_prs, Keypdb_t.Partial_key))))

  | pth_atm -> begin print_error_atom_path pth_atm; assert false end 

and print_error_atom_path pth_atm =
  Format.fprintf (Format.err_formatter) 
 "@.@[<hov>%s.atom_partial_keypdb_of_atom_path: --- Fatal Error ---@.\
   expecting Capeptide level in atom_path %a.@]@."
   nam_cod 
   Path_v.print pth_atm 
;;

