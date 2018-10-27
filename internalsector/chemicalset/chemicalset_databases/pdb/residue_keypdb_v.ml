(* $Id: Exp $ *)

let nam_cod = "Residue_keypdb_v";;
let octr_ppf = Format.formatter_of_out_channel Tools_v.oc_trace;;

(** {6 Making from ATOM Record.} *)

let make_residue_level_keypdb sym_pam idx_res =
  (Keypdb_t.Residue_symbol sym_pam, Keypdb_t.Residue_index idx_res) 
;;

let make sym_res idx_res key_upp =
  let lvl_res = make_residue_level_keypdb sym_res idx_res in
  Keypdb_t.Level (lvl_res, key_upp)
;;

let residue_level_keypdb_of_recordpdb_atom arp =
  let crn_prs = arp.Recordpdb_atom_t.canonical_residue_number in
  let iip_str = arp.Recordpdb_atom_t.insertion_index_pdb in
  let iip_prs = Index_pdb_v.insertion_index_pdb_of_string iip_str in
  let sym_prs = arp.Recordpdb_atom_t.residue_symbol in
  let sym_pam = Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_string sym_prs in
  let sym_res = sym_pam in
  let idx_res = (crn_prs, iip_prs) in

  make_residue_level_keypdb sym_res idx_res 
;;

(*
ATOM    470 1HD1ALEU B  25C      0.243  16.147  -1.682  0.57  5.46           H  
                <--------->                             <-->
                1         2                             5  6
123456789012345678901234567890123456789012345678901234567890                
*)

let residue_partial_keypdb_of_recordpdb_atom arp = 
  let lvl_res = residue_level_keypdb_of_recordpdb_atom arp in
      Keypdb_t.Level (lvl_res, Keypdb_t.Partial_key)
;;

(** {6 Making from Path.} *)

let residue_canonical_index_pdb_of_vertebra_index idx_vrb =
   idx_vrb + 1  (* *** TODO *)
;;

let insertion_index_pdb_of_vertebra_index idx_vrb =
   Index_pdb_t.Insertion_blank (* *** TODO *)
;;

let print_error_path pth her =
    Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    unkown residue_path >%a<@.\
    Please add it to the menu above.@]@." 
    nam_cod her Path_v.print pth;       
;;

let print_error_block lvl pth her =
    Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    expecting Block path_level.@.found %a capeptide_path >%a<@.\
    Please add it to the menu above.@]@." 
    nam_cod her Path_v.print_level lvl Path_v.print pth;       
;;

let residue_level_keypdb_of_block_level_of_capeptide_path lvl_blk pth_cpt = 
  let shift =
    match lvl_blk with           (* Co belongs to previous Residue_pdb *)
      |(Path_t.Block, Path_t.Block_symbol Block_symbol_t.Co, Path_t.Head) -> -1
      |(Path_t.Block, _, _) -> 0
      | lvl -> begin print_error_block 
	 lvl pth_cpt "residue_level_keypdb_of_block_level_of_capeptide_path";
	  assert false end
  in     
  match pth_cpt with
    | Path_t.Spine ((Path_t.Capeptide, 
                   Path_t.Capeptide_symbol sym_ama, Path_t.Alone),
       Path_t.Spine ((Path_t.Residue, 
                   Path_t.Residue_symbol sym_res,
                   Path_t.Vertebra idx_vrb),
        Path_t.Spine ((Path_t.Peptidechain,
                   Path_t.Peptidechain_symbol sym_ama_a,
                   Path_t.Body),
         Path_t.Level ((Path_t.Polypeptide,
	           Path_t.Polypeptide_symbol
		     {Polypeptide_symbol_t.identifier =
		       (Protein_identifier_t.Frames id_pdb, chn_lbl);
		        Polypeptide_symbol_t.nterminal_head = _;
		        Polypeptide_symbol_t.cterminal = _
                     }, Path_t.Can _), _))))  ->

   let can_num = residue_canonical_index_pdb_of_vertebra_index idx_vrb in
   let idx_ins = insertion_index_pdb_of_vertebra_index idx_vrb in
   let idx_res = (can_num +shift, idx_ins) in 
   let sym_ama = 
     Residue_symbol_v.aminoacid_symbol_of_residue_symbol sym_res in
   let sym_pam = 
     Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_aminoacid_symbol sym_ama in
   
   make_residue_level_keypdb sym_pam idx_res

   | pth -> begin 
       print_error_path pth "residue_level_keypdb_of_block_level_of_capeptide_path"; 
       assert false end
;;

let residue_level_keypdb_of_nterminal_head_path = function
  |  Path_t.Spine ((Path_t.Nterminal,
		    Path_t.Nterminal_symbol
		      ((smb_ama, pst), sym_frg), Path_t.Head),
       Path_t.Level ((Path_t.Polypeptide,
	              Path_t.Polypeptide_symbol
			{Polypeptide_symbol_t.identifier =
			 (Protein_identifier_t.Frames id_pdb, chn_lbl);
		         Polypeptide_symbol_t.nterminal_head = _;
		         Polypeptide_symbol_t.cterminal = _
                       }, Path_t.Can _), _))  ->

   let can_num = residue_canonical_index_pdb_of_vertebra_index 0 in
   let idx_ins = insertion_index_pdb_of_vertebra_index 0 in
   let idx_res = (can_num, idx_ins) in 
   let sym_pam = 
     Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_aminoacid_symbol sym_ama in
   
   make_residue_level_keypdb sym_pam idx_res

   | pth -> begin 
       print_error_path pth "residue_level_keypdb_of_nterminal_head_path"; 
       assert false end
;;

let residue_level_keypdb_of_sidechain_path = function 
  |  Path_t.Left
    ((Path_t.Sidechain,
      Path_t.Sidechain_symbol (smb_ama_s, pst_s), Path_t.Alone),
    Path_t.Spine
     ((Path_t.Residue, 
       Path_t.Residue_symbol (smb_ama_r, pst_r), Path_t.Vertebra idx_vrb), 
     Path_t.Spine
      ((Path_t.Peptidechain,
        Path_t.Peptidechain_symbol
         (Protein_identifier_t.Frames pri, idx_chn),
        Path_t.Body),
       Path_t.Level ((Path_t.Polypeptide,
	             Path_t.Polypeptide_symbol
		     {Polypeptide_symbol_t.identifier =
		       (Protein_identifier_t.Frames id_pdb, chn_lbl);
		        Polypeptide_symbol_t.nterminal_head = _;
		        Polypeptide_symbol_t.cterminal = _
                     }, Path_t.Can _), _))))  ->

   let can_num = residue_canonical_index_pdb_of_vertebra_index idx_vrb in
   let idx_ins = insertion_index_pdb_of_vertebra_index idx_vrb in
   let idx_res = (can_num, idx_ins) in 
   let sym_pam = 
     Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_aminoacid_symbol sym_ama_s in
   
   make_residue_level_keypdb sym_pam idx_res

   | pth -> begin 
       print_error_path pth "residue_level_keypdb_of_block_level_of_capeptide_path"; 
       assert false end
;;

let residue_level_keypdb_of_nterminal_sidechain_path = function
  |  Path_t.Spine ((Path_t.Nterminal,
		    Path_t.Nterminal_symbol
		      ((smb_ama, pst), sym_frg), Path_t.Head),
       Path_t.Level ((Path_t.Polypeptide,
	              Path_t.Polypeptide_symbol
			{Polypeptide_symbol_t.identifier =
			 (Protein_identifier_t.Frames id_pdb, chn_lbl);
		         Polypeptide_symbol_t.nterminal_head = _;
		         Polypeptide_symbol_t.cterminal = _
                       }, Path_t.Can _), _))  ->

   let can_num = residue_canonical_index_pdb_of_vertebra_index 0 in
   let idx_ins = insertion_index_pdb_of_vertebra_index 0 in
   let idx_res = (can_num, idx_ins) in 
   let sym_pam = 
     Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_aminoacid_symbol sym_ama in
   
   make_residue_level_keypdb sym_pam idx_res

   | pth -> begin 
       print_error_path pth "residue_level_keypdb_of_nterminal_sidechain_path"; 
       assert false end
;;
(** {6 Printing.} *)

let print = Keypdb_v.print;;

let string_of_residue_keypdb = Keypdb_v.string_of_keypdb;;

(* *** 
(** Readings. *)

let rec read ib =
(* 16 characters : 
    "ILE_B___7C_0.21" 
     ILE              residue_symbol_pdb  -| --- residue_name_pdb  -----|
         B            polypeptide_label_pdb        -|                            |-- label
          ___7        residue_canonical_index_pdb  -| --- residue_code_pdb---|
              C       insertion_index_pdb           -| *)

  Scanf.bscanf ib "%r_%r_%r%r" 
    read_residue_symbol_pdb
    read_polypeptide_label_pdb 
    read_residue_canonical_index_pdb
    read_insertion_index_pdb 
 
    (fun pdb_rss chn_lbl can_num ins_idx -> 
      make_residue_keypdb pdb_rss chn_lbl can_num ins_idx)

and read_residue_symbol_pdb ib =
  Aminoacid_symbol_pdb_v.read_anycase_aminoacid_symbol_pdb ib

and read_polypeptide_label_pdb ib =
  Index_pdb_v.read_chain_index_pdb ib

and read_residue_canonical_index_pdb ib =
  Tokenpdb_v.read_integer_4 ib

and read_insertion_index_pdb ib =
  Index_pdb_v.read_insertion_index_pdb ib
;;

(** {9 Residue_pdb_t_of_....} *)

let residue_canonical_index_pdb_of_string str =   
  let ib = Scanf.Scanning.from_string str in
  read_residue_canonical_index_pdb ib
;;

let residue_keypdb_of_string str =
  if not (String.length str = 11) then  
    raise (Failure "Residue_pdb_v.of_string: not an 11 characters string")
  else read_residue_keypdb (Scanf.Scanning.from_string str)
;;

let residue_keypdb_of_anycase str =  
  residue_keypdb_of_string (Tools_v.capitalize_force  str) 
;;

let residue_name_pdb_of_string str =
  if not (String.length str = 5) then  
    raise (Failure "Residue_pdb_v.of_string: not an 5 characters string")
  else read_residue_name_pdb (Scanf.Scanning.from_string str)
;;

let residue_name_pdb_of_anycase str =  
  residue_name_pdb_of_string (Tools_v.capitalize_force  str) 
;;

let residue_name_pdb_of_char  c  chn_lbl =
  let sym_ams_pdb = Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_char c in
  make_residue_name_pdb  sym_ams_pdb  chn_lbl
;;

let residue_name_pdb_of_one_letter_code_pdb  olc chn_lbl = 
  let sym_ams_pdb = 
    Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_one_letter_code_pdb  olc in
  make_residue_name_pdb sym_ams_pdb chn_lbl 
;;

let residue_name_pdb_of_aminoacid_symbol sym_ams_pdb chn_lbl =
  make_residue_name_pdb sym_ams_pdb chn_lbl 
;;

(* residue_pdb_of_.... *)

let residue_pdb_of_string str =
(* str is "AILE_B___7C_0.21_10" *)
  Utils_v.not_yet_implemented "residue_pdb_of_string"
(*  
read (Scanf.Scanning.from_string str)
*)
;;

let residue_pdb_of_anycase str =
  Utils_v.not_yet_implemented "residue_pdb_of_anycase"
(*  (residue_keypdb_of_anycase str, ich_num)*)
;;

let residue_pdb_of_aminoacid_symbol ams =
  Utils_v.not_yet_implemented "residue_pdb_of_aminoacid_symbol"
;;

let insequence_number_of_string str =
  read_insequence_number (Scanf.Scanning.from_string str)
;; 

(** {9 Printings.} *)

let print_insequence_number  ppf  ich_num =
  Format.fprintf ppf "%i" 
  ich_num
;;

let print_polypeptide_label_pdb ppf  chn_lbl =
   Polypeptide_identifier_v.print_chain_index ppf chn_lbl
;;

let print_residue_canonical_index_pdb ppf can_num =
     Tokenpdb_v.print_integer_4 ppf can_num
 
let print_insertion_index_pdb ppf ins_idx =
   Index_pdb_v.print_insertion_index_pdb ppf ins_idx
;;

let print_residue_symbol_pdb ppf pdb_rss =
  Aminoacid_symbol_pdb_v.print ppf pdb_rss
;;

let print_alternate_location_index_pdb  ppf alt_idx =
  Format.fprintf ppf "%a" 
  Index_pdb_v.print_alternate_location_index_pdb alt_idx
;;
  
let print_alternate_location_weight_pdb  ppf alt_wgt =
  Format.fprintf ppf "%a" 
  Tokenpdb_v.print_float_4 alt_wgt
;;

let print_residue_keypdb  ppf  pdb_rsm =
  Format.fprintf ppf "%a%a_%a%a%a%a" 
    print_alternate_location_index_pdb pdb_rsm.Residue_pdb_t.alternate_location_index_pdb
    print_residue_symbol_pdb pdb_rsm.Residue_pdb_t.residue_symbol_pdb
    print_polypeptide_label_pdb pdb_rsm.Residue_pdb_t.polypeptide_label_pdb
    print_residue_canonical_index_pdb pdb_rsm.Residue_pdb_t.residue_canonical_index_pdb
    print_insertion_index_pdb pdb_rsm.Residue_pdb_t.insertion_index_pdb 
    print_alternate_location_weight_pdb pdb_rsm.Residue_pdb_t.alternate_location_weight_pdb
;;

let print  ppf  pdb_res =
 Format.fprintf ppf "%a_%i_%a" 
 print_residue_keypdb  pdb_res.Residue_pdb_t.residue_keypdb 
 pdb_res.Residue_pdb_t.insequence_number
 Header_pdb_v.print_id_pdb  pdb_res.Residue_pdb_t.id_pdb
;;

let print_residue_name_pdb  ppf  res_nam =
 let (pdb_rss, chn_lbl) = res_nam in
  Format.fprintf ppf "%a%a" 
   print_residue_symbol_pdb pdb_rss
   print_polypeptide_label_pdb  chn_lbl
;;

let string_of_residue_pdb  pdb_res  =
   Utils_v.not_yet_implemented "to_string"
(*
  print Format.str_formatter pdb_res ;
  Format.flush_str_formatter () 
*)
;;

let uppercase_of_residue_pdb pdb_res =
  String.uppercase (string_of_residue_pdb  pdb_res)
;; 

(** {9 residue_keypdb.} *)

let residue_keypdb_of_residue_pdb  pdb_res =
  pdb_res.Residue_keypdb_t.residue_keypdb 
;;

let polypeptide_label_pdb_of_residue_keypdb  pdb_key =
   let pdb_rsm = pdb_key.Residue_keypdb_t.residue_keypdb in
   pdb_rsm.Residue_keypdb_t.polypeptide_label_pdb
;;

(** {9 aminoacid_symbol_pdb.} *)
let aminoacid_symbol_pdb_of_residue_keypdb  pdb_key =
  let pdb_rsm = pdb_key.Residue_keypdb_t.residue_keypdb in
  pdb_rsm.Residue_pdb_t.residue_symbol_pdb
;;

(* aminoacid_symbol *)

let aminoacid_symbol_of_residue_keypdb  pdb_key =
  let sym_ams_pdb = aminoacid_symbol_pdb_of_residue_keypdb  pdb_key in
  Aminoacid_symbol_pdb_v.aminoacid_symbol_of_aminoacid_symbol_pdb sym_ams_pdb
;;

(* chemical_name *)

let chemical_name_of_residue_keypdb  pdb_key =
  let sym_ams_pdb = aminoacid_symbol_pdb_of_residue_keypdb  pdb_key in
  Aminoacid_symbol_pdb_v.name_of_aminoacid_symbol_pdb sym_ams_pdb
;;
* *** *)

