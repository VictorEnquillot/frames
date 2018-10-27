(* $Id: Exp $ *)

let atom_name_pdb_in_sidechain  atm_smb  grp_smb  grp_idx  sch_smb =

  match atm_smb with
    | Chemical_element.Element Mendeleiev.C -> 
	Atom_pdb_name_c_in_sidechain.make grp_smb, grp_idx, sch_smb

    | Chemical_element.Element Mendeleiev.N ->
	Atom_pdb_name_n_in_sidechain.make grp_smb, grp_idx, sch_smb

    | Chemical_element.Element Mendeleiev.O ->
       	Atom_pdb_name_o_in_sidechain.make grp_smb, grp_idx, sch_smb

    | Chemical_element.Element Mendeleiev.H ->
    	Atom_pdb_name_h_in_sidechain.make grp_smb, grp_idx, sch_smb

    | Chemical_element.Element Mendeleiev.S ->
    	Atom_pdb_name_s_in_sidechain.make grp_smb, grp_idx, sch_smb

    | _ ->
      Format.fprintf Format.err_formatter 
      "@[@.Atom_keypdb_v.atom_name_pdb_in_sidechain:@.\
      Fatal Error.@.\
      Attempt to define an unknown atom_name_pdb from atom group and backbone symbols@.\
      Incoming atom_symbol: >%a<@.\
      Incoming group_symbol: >%a<@.\
      Incoming backbone_link_symbol: >%a<@.\
      Correction ... .@.@]@."
      Atom_names.print_atom_symbol  atm_smb
      Chemical_group_symbols.print_chemical_group_symbol  grp_smb
      Path_v.print_sidechain_symbol  sch_smb;
      assert false;
;;
(** There is no reference, in path, to the residue it belongs to 
    if an atom or a group is "in_chain" because it is directly bound to 
    the polypeptidic chain either at the Nterminal or at the Cterminal.
    This function gets the residue information to produce the atom_keypdb. *)

(* TAKEN_OUT 
let atom_name_pdb_h_in_protein  atm_idx  grp_smb  grp_idx =
  match grp_smb with 
  | Chemical_group_symbol.Oh -> 
      make 
	Index_pdb_t.H_blank  Atom_name_pdb_t.HX  Index_pdb_t.Branch_blank
  | Chemical_group_symbol.H -> 
      make  
	Index_pdb_t.H_blank  Atom_name_pdb_t.HX  Index_pdb_t.Branch_blank
  | _ -> failwith "atom_name_pdb_h_in_protein"
	;;

let atom_name_pdb_in_protein
	atm_smb atm_idx grp_smb grp_idx =
  match atm_smb with
    | Chemical_element.Element Mendeleiev.O ->
	make  
	  Index_pdb_t.H_blank  Atom_name_pdb_t.OX  Index_pdb_t.Branch_blank

    | Chemical_element.Element Mendeleiev.H ->
	atom_name_pdb_h_in_protein atm_idx grp_smb grp_idx

    | _ -> failwith "atom_keypdb_of_moleculel"
;;
* TAKEN_OUT *)

(** {6 Three cases: in Backbone_link in Sidechain in Chain.} *)

let atom_name_pdb_of_path = 
Utils_v.not_yet_implemented "atom_name_pdb_of_path"
;;
(*
let atom_name_pdb_of_path = function
  |  (Path_t.Atom_kind, atm_smb, atm_idx),       (* in Backbone_link *)
       Path_t.Chemical_group_in_backbone_link
	 ((Path_t.Chemical_group_kind, grp_smb, grp_idx),
	  ((Path_t.Backbone_link_kind, bbl_smb, 0),
	   (_,
            (_,
             (_,_) ))))
 
   -> Atom_pdb_name_in_backbone_link.make atm_smb  grp_smb  bbl_smb 

  | ((Path_t.Atom_kind, atm_smb, atm_idx),       (* in Sidechain *)
     Path_t.Chemical_group_in_backbone_link
       ((Path_t.Chemical_group_kind, grp_smb, grp_idx),
	((Path_t.Sidechain_kind, sch_smb, 0),
	 ((Path_t.Residue_kind, res_smb, res_idx),
          ((Path_t.Chain_kind, (chn_lbl, chn_fml), chn_idx),
           ((Path_t.Protein_kind, (prn_dsg, prn_fml), prn_idx),
            Path_t.System_in_system
              ((Path_t.System_kind,
		System_symbol.Subsystem sss_nam, sss_idx),
               Path_t.Global_system
		 (System_symbol.Global sys_nam)))))))) 
   
    -> atom_name_pdb_in_sidechain  atm_smb  grp_smb  grp_idx  sch_smb 

  | (* in Chain *) 
   _ -> atom_name_pdb_in_chain_of_path  pth
;;
*)

let polypeptide_sequence_pdb_of_path  nmn =
  let chn_smb = Path_v.chain_symbol_of_path nmn in
  polypeptide_sequence_pdb_of_chain_symbol  chn_smb
;;

let polypeptide_formula_pdb_of_path  nmn =
  let chn_smb = Path_v.chain_symbol_of_path nmn in
  polypeptide_formula_pdb_of_chain_symbol  chn_smb
;;

let polypeptide_sequence_pdb_of_chain_symbol  chn_smb =
  let frml = Path_v.protein_formula_of_chain_symbol  chn_smb in 
  let seq = Path_v.protein_sequence_of_protein_formula  frml in
  polypeptide_sequence_pdb_of_chain_sequence  seq
;;

let aminoacid_symbol_pdb_nth_of_path  num  nmn =
  let frm_plp_pdb = polypeptide_formula_pdb_of_path  nmn in
  Array.get frm_plp_pdb (num-1)
;;

let cter_aminoacid_symbol_pdb_of_path nmn =
  Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_aminoacid_symbol
    (Path_v.cter_aminoacid_symbol_of_path nmn) 
;;

let nter_aminoacid_symbol_pdb_of_path nmn =
  Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_aminoacid_symbol 
    (Path_v.nter_aminoacid_symbol_of_path nmn)
;;



(* TAKEN_OUT
let cter_residue_pdb_of_path  pdb_num  ins_idx  nmn =
  let am_ac = cter_aminoacid_symbol_pdb_of_path  nmn in
  let chn_smb = Polypeptide_identifier_t.chain_index_of_int 
    (Path_t.chain_index_of_path  nmn) in
  let ich_num = Path_t.cter_residue_number_of_path  nmn in
  let res_men = Residue_pdb_v.make_residue_mention_pdb 

am_ac chn_smb ich_num pdb_num ins_idx 
;;

let nter_residue_pdb_of_path  pdb_num  ins_idx  nmn =
  let am_ac = nter_aminoacid_symbol_pdb_of_path  nmn in
  let chn_smb = Polypeptide_identifier_t.chain_index_of_int 
    (Path_t.chain_index_of_path  nmn) in
    Residue_pdb_v.make am_ac chn_smb 1 pdb_num ins_idx
;;
*)

let file_name_pdb_of_path  nmn = 
  let sym_prn = 
    Path_v.protein_symbol_of_path nmn
  in
  file_name_pdb_of_protein_identifier  sym_prn
;;

let file_name_pdb_of_path  nmn = 
  let id_pdb = Header_pdb_v.id_pdb_of_path  nmn in
  file_name_pdb_of_protein_identifier  id_pdb 
;; 

let id_pdb_of_path  nmn =
  let sym_prn = Path_v.protein_symbol_of_path  nmn in
  let prn_dsg = Path_v.protein_designator_of_protein_symbol sym_prn in
  id_pdb_of_protein_designator prn_dsg
;;

let path_of_formula_pdb idx pdb_frm =
  let frm = Sequence_pdb_t.to_formula  pdb_frm in 
  [Path_t.Molecule 
      (idx, Path_t.Protein (Path_t.Protein_formula  frm))
  ]
;;

let path_of_string_array idx str_a =
  let seq_pdb = Array.map  Residue_pdb_v.of_anycase  str_a in
    path_of_sequence_pdb idx seq_pdb
;;


let residue_keypdb_of_path nmn =
Utils_v.not_yet_implemented "residue_keypdb_of_path"
;;

let atom_keypdb_of_path  nmn =

  let pky_res = residue_keypdb_of_path  nmn in
  let atm_nam = Atom_name_pdb_v.atom_name_pdb_of_path  nmn in 
  
  make_atom_keypdb  atm_nam  pky_res
;;

