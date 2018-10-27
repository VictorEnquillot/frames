(** {3 Get Atom Keypdb from Atom Path.} *)


(** Work by Residue Name *)

(** Backbones *)

(** Alanine Fragments Blocks Atoms. *)

let fragment_keypdb_ala_of_fragment_symbol = function
  | s when s = Fragment_symbol_v.methyl -> 
      let pth_blk_l = Fragment_symbol_formula_v.make s in
      let kyp_atm_l = List.map 
	  atom_keypdb_ala_of_atom_path 
  | _ -> failwith "unkown fragment symbol"
;;

let fragment_keypdb_of_residue_name_of_fragment_symbol nam_res sym_frg =
  match nam_res with
  | "ALA" -> fragment_keypdb_ala_of_fragment_symbol sym_frg
  | _ -> failwith "unkown residue name"
;;

let sym_ama = Aas_v.alanine;;
let sym_sdg = Sgs_v.make sym_ama;;
let sym_frg_t = Sidegroup_symbol_formula_v.make sym_sdg;; (* fragment symbol tree *)
let nam_res = Residue_packpdb_data_v.residue_name_of_aminoacid_symbol sym_ama;;

let kyp_frg_t = 
  Tre_v.map 
    (fragment_keypdb_of_residue_name_of_fragment_symbol nam_res) sym_frg_t;;
