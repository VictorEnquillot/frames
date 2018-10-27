(** *)

let nam_cod = "Atom_keypdb_backbone_v";;

(** {6 Making from ATOM Record.} *)

(** {6 Making from Path.} *)

let print_error_level mes lvl_blk her  =
  Format.fprintf (Format.err_formatter) 
 "@.@[<hov>%s.%s: --- Fatal Error ---@.\
   expecting a %s path_level@.\
   found %a path_level.@]@."
   nam_cod her mes Path_v.print_level lvl_blk 
;;

let rec block_level_keypdb_of_block_level_path = function
  | (Path_t.Block, Path_t.Block_symbol sym_blk, _) ->
      let rip = remote_index_pdb sym_blk in
      (Keypdb_t.Block_symbol, Keypdb_t.Block_index rip)

  | lvl_blk -> begin print_error_level 
	"Block" lvl_blk "block_level_keypdb_of_block_level_path"; 
      assert false 
  end 

and remote_index_pdb = function
  | Block_symbol_t.Ch          (* Ca *)
  | Block_symbol_t.Ch2 -> Index_pdb_t.Remote_A
  | _ -> Index_pdb_t.Remote_blank
;;

let print_error_atom_path mes pth_atm her =
  Format.fprintf (Format.err_formatter) 
 "@.@[<hov>%s.%s: --- Fatal Error ---@.\
   expecting %s level inside atom_path.@.atom_path %a.@]@."
   nam_cod her mes Path_v.print pth_atm 
;;

let atom_partial_keypdb_of_atom_path = function
  | Path_t.Level (lvl_atm,    (* Capeptide *)
     Path_t.Level (lvl_blk, 
      Path_t.Spine (lvl_frg, 
       (Path_t.Spine ((Path_t.Capeptide, _,_), _) as pth_cpt) ))) 
		    as pth_atm ->

	  let idx_alt =  (* *** TODO *)
	    Provider_data_pdb_v.provide_alternate_location_index pth_atm in 
	  let lvl_pat = 
	    Keypdb_v.make_atom_level_keypdb lvl_atm idx_alt in

	  let lvl_pbl = block_level_keypdb_of_block_level_path lvl_blk in
          
	  let lvl_prs = (* need to shift from residue_site to residue_pdb *) 
   Residue_keypdb_v.residue_level_keypdb_of_block_level_of_capeptide_path 
	      lvl_blk pth_cpt in
	  
	  Keypdb_t.Level (lvl_pat,
	   Keypdb_t.Level (lvl_pbl,
	    Keypdb_t.Level (lvl_prs, Keypdb_t.Partial_key)))

  | Path_t.Level (lvl_atm,    (* Nterminal head *)
     Path_t.Level (lvl_blk, 
      Path_t.Spine (lvl_frg, 
	(Path_t.Spine ((Path_t.Nterminal, _,_), _) as pth_ntl) ))) 
      as pth_atm ->
	 
	let idx_alt = 
	    Provider_data_pdb_v.provide_alternate_location_index pth_atm in 
	  let lvl_pat = 
	    Keypdb_v.make_atom_level_keypdb lvl_atm idx_alt in
	  let lvl_pbl = block_level_keypdb_of_block_level_path lvl_blk in

	  let lvl_prs = 
	    Residue_keypdb_v.residue_level_keypdb_of_nterminal_head_path pth_ntl in
	  
	  Keypdb_t.Level (lvl_pat,
	   Keypdb_t.Level (lvl_pbl,
	    Keypdb_t.Level (lvl_prs, Keypdb_t.Partial_key)))


  | pth_atm -> begin print_error_atom_path 
      "Capeptide" pth_atm "atom_partial_keypdb_of_atom_path"; 
      assert false 
  end 

;;

