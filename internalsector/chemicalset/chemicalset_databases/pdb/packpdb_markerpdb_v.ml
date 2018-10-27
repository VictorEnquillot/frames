(** {3 The Marker functionnalities for a Pack of a Pdb Entry} *)

let nam_cod = "Packpdb_markerpdb_v";;


(** {6 Converting.} *)

let name marker_pkp =
  Doublet_v.name Packpdb_symbol_v.name (List_v.name (Format.sprintf "%c")) marker_pkp
;;

let print ppf marker_pkp = 
  let prt_chr ppf chr =
    Format.fprintf ppf "%c" chr in 
  Doublet_v.print Packpdb_symbol_v.print (List_v.print prt_chr) ppf marker_pkp
;;

let compare marker_a marker_b =
  String.compare (name marker_a) (name marker_b)
;;

let chain_idpdb_list_of_recordpdb_string_of_recordpdb_symbol str_rcp = function 
    | Recordpdb_symbol_t.ANISOU ->   
	Utils_v.not_yet_implemented nam_cod "chain_idpdb_list_of_recordpdb_string_of_recordpdb_symbol ANISOU"  
    | Recordpdb_symbol_t.ATOM ->
	[Atom_fieldpdb_data_v.char_of_atom_fieldpdb_symbol_of_recordpdb_string 
	   Atom_fieldpdb_symbol_t.Atom_chain_id str_rcp]
    | Recordpdb_symbol_t.DBREF1 ->
	[Dbref1_fieldpdb_data_v.dbref1_chain_idpdb_of_dbref1_fieldpdb_symbol_of_recordpdb_string 
	   Dbref1_fieldpdb_symbol_t.Dbref1_chain_id str_rcp]
    | Recordpdb_symbol_t.DBREF2 -> 
	[Dbref2_fieldpdb_data_v.dbref2_chain_idpdb_of_dbref2_fieldpdb_symbol_of_recordpdb_string 
	   Dbref2_fieldpdb_symbol_t.Dbref2_chain_id str_rcp]
    | Recordpdb_symbol_t.DBREF -> 
	[Dbref_fieldpdb_data_v.dbref_chain_idpdb_of_dbref_fieldpdb_symbol_of_recordpdb_string 
	   Dbref_fieldpdb_symbol_t.Dbref_chain_id str_rcp]
    | Recordpdb_symbol_t.HELIX -> (* The Chain ID not the HELIX ID *)
	[
	 Helix_fieldpdb_data_v.helix_chain_idpdb_of_helix_fieldpdb_symbol_of_recordpdb_string 
	   Helix_fieldpdb_symbol_t.Helix_initial_chain_id str_rcp;
       ]
    | Recordpdb_symbol_t.HETATM ->
	[Hetatm_fieldpdb_data_v.char_of_hetatm_fieldpdb_symbol_of_recordpdb_string 
	   Hetatm_fieldpdb_symbol_t.Hetatm_chain_id str_rcp]
    | Recordpdb_symbol_t.HET ->
	[Het_fieldpdb_data_v.het_chain_idpdb_of_het_fieldpdb_symbol_of_recordpdb_string 
	   Het_fieldpdb_symbol_t.Het_chain_id str_rcp]
    | Recordpdb_symbol_t.MODRES ->
	[Modres_fieldpdb_data_v.modres_chain_idpdb_of_modres_fieldpdb_symbol_of_recordpdb_string 
	   Modres_fieldpdb_symbol_t.Modres_chain_id str_rcp]
    | Recordpdb_symbol_t.SEQADV -> 
	[Seqadv_fieldpdb_data_v.seqadv_chain_idpdb_of_seqadv_fieldpdb_symbol_of_recordpdb_string 
	   Seqadv_fieldpdb_symbol_t.Seqadv_chain_id str_rcp]
    | Recordpdb_symbol_t.SEQRES -> 
	[Seqres_fieldpdb_data_v.seqres_chain_idpdb_of_seqres_fieldpdb_symbol_of_recordpdb_string 
	   Seqres_fieldpdb_symbol_t.Seqres_chain_id str_rcp]
    | Recordpdb_symbol_t.TER ->
   	[Ter_fieldpdb_data_v.ter_chain_idpdb_of_ter_fieldpdb_symbol_of_recordpdb_string 
	   Ter_fieldpdb_symbol_t.Ter_chain_id str_rcp]
    | Recordpdb_symbol_t.SHEET -> (* The Chain ID not the SHEET ID *)
	[
	 Sheet_fieldpdb_data_v.sheet_chain_idpdb_of_sheet_fieldpdb_symbol_of_recordpdb_string 
	   Sheet_fieldpdb_symbol_t.Sheet_initial_residue_chain_id str_rcp;
       ]
    | Recordpdb_symbol_t.CISPEP ->
	[Seqres_fieldpdb_data_v.seqres_chain_idpdb_of_seqres_fieldpdb_symbol_of_recordpdb_string 
	   Seqres_fieldpdb_symbol_t.Seqres_chain_id str_rcp]
    | Recordpdb_symbol_t.LINK -> (* The Chain ID not the LINK ID *)
	[
	 Link_fieldpdb_data_v.link_chain_idpdb_of_link_fieldpdb_symbol_of_recordpdb_string 
	   Link_fieldpdb_symbol_t.Link_chain_idpdb_1 str_rcp;
       ]
    | Recordpdb_symbol_t.SSBOND -> (* The may be on two Chains *)
	[
	 Ssbond_fieldpdb_data_v.ssbond_chain_idpdb_of_ssbond_fieldpdb_symbol_of_recordpdb_string 
	   Ssbond_fieldpdb_symbol_t.Ssbond_chain_idpdb_1 str_rcp;
	 Ssbond_fieldpdb_data_v.ssbond_chain_idpdb_of_ssbond_fieldpdb_symbol_of_recordpdb_string 
	   Ssbond_fieldpdb_symbol_t.Ssbond_chain_idpdb_2 str_rcp;
       ]
    | Recordpdb_symbol_t.SITE ->  (* The Chain ID not the SITE ID *)
	[
	 Site_fieldpdb_data_v.site_chain_idpdb_of_site_fieldpdb_symbol_of_recordpdb_string 
	   Site_fieldpdb_symbol_t.Site_first_residue_chain_id str_rcp;
      ]
    | _ -> []
;;

let packpdb_markerpdb_off_recordpdb_string str_rcp =
  let sym_pkp = Packpdb_symbol_v.packpdb_symbol_off_recordpdb_string str_rcp in
  let chr_l = 
    chain_idpdb_list_of_recordpdb_string_of_recordpdb_symbol 
      str_rcp sym_pkp in
  Doublet_v.make sym_pkp chr_l 
;;

(** {6 Extracting.} *)

let packpdb_symbol_off_packpdb_markerpdb mrp_pkp =
  Doublet_v.left_off_doublet mrp_pkp
;;

let packpdb_chain_idpdb_list_off_packpdb_markerpdb mrp_pkp =
  Doublet_v.right_off_doublet mrp_pkp
;;

(** {6 Querying.} *)

let has_of_packpdb_markerpdb_of_string mkp_pkp str_rcp =
  let mkp = packpdb_markerpdb_off_recordpdb_string str_rcp in
  mkp_pkp = mkp
;;

let has_same_packpdb_markerpdb_of_string_of_string str_rcp_a str_rcp_b =
  let mkp_pkp_a = packpdb_markerpdb_off_recordpdb_string str_rcp_a in
  let mkp_pkp_b = packpdb_markerpdb_off_recordpdb_string str_rcp_b in
  mkp_pkp_a = mkp_pkp_b
;;

(** {6 Making.} *)

let make sym_pkp chr_l = 
  Doublet_v.make sym_pkp chr_l 
;;

let read ib =
  Utils_v.not_yet_implemented nam_cod "read"
;;

