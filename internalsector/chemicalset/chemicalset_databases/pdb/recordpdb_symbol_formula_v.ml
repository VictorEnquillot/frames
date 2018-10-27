(** {3 The functionalities fro a Symbol Formula for a Record of the Pdb} *)

let nam_cod = "Recordpdb_symbol_formula_v";;


let make = function
  | Recordpdb_symbol_t.MASTER -> [ ]
  | Recordpdb_symbol_t.END -> [ ]
  | Recordpdb_symbol_t.CONECT -> [ ]
  | Recordpdb_symbol_t.SSBOND -> [ ]
  | Recordpdb_symbol_t.LINK -> [ ]
  | Recordpdb_symbol_t.CISPEP -> [ ]
  | Recordpdb_symbol_t.MODEL -> [ ]
  | Recordpdb_symbol_t.ATOM -> [  
      Fieldpdb_symbol_v.recordname_field_symbol;
      Fieldpdb_symbol_v.atom_serial_number;
      Fieldpdb_symbol_v.empty_1;
      Fieldpdb_symbol_v.h_index_pdb;
      Fieldpdb_symbol_v.atom_symbol;
      Fieldpdb_symbol_v.remote_index;
      Fieldpdb_symbol_v.branch_index;
      Fieldpdb_symbol_v.alternate_location_index;
      Fieldpdb_symbol_v.aminoacid_symbol_pdb;
      Fieldpdb_symbol_v.empty_2;
      Fieldpdb_symbol_v.chain_index;
      Fieldpdb_symbol_v.canonical_residue_number;
      Fieldpdb_symbol_v.insertion_index_pdb;
      Fieldpdb_symbol_v.empty_3;
      Fieldpdb_symbol_v.x;
      Fieldpdb_symbol_v.y;
      Fieldpdb_symbol_v.z;
      Fieldpdb_symbol_v.empty_4;
      Fieldpdb_symbol_v.alternate_location_weight;
      Fieldpdb_symbol_v.empty_5;
      Fieldpdb_symbol_v.b_factor;
      Fieldpdb_symbol_v.empty_6;
      Fieldpdb_symbol_v.segment_index;
      Fieldpdb_symbol_v.element_symbol;
      Fieldpdb_symbol_v.atom_charge_pdb;
    ]
  | Recordpdb_symbol_t.ANISOU -> [ ]
  | Recordpdb_symbol_t.TER -> [ ]
  | Recordpdb_symbol_t.HETATM -> [ ]
  | Recordpdb_symbol_t.ENDMDL -> [ ]
  | Recordpdb_symbol_t.ORIGX1 -> [ ]
  | Recordpdb_symbol_t.ORIGX2 -> [ ]
  | Recordpdb_symbol_t.ORIGX3 -> [ ]
  | Recordpdb_symbol_t.SCALE1 -> [ ]
  | Recordpdb_symbol_t.SCALE2 -> [ ]
  | Recordpdb_symbol_t.SCALE3 -> [ ]
  | Recordpdb_symbol_t.MTRIX1 -> [ ]
  | Recordpdb_symbol_t.MTRIX2 -> [ ]
  | Recordpdb_symbol_t.MTRIX3 -> [ ]
  | Recordpdb_symbol_t.CRYST1 -> [ ]
  | Recordpdb_symbol_t.HET -> [ ]
  | Recordpdb_symbol_t.HETNAM -> [ ]
  | Recordpdb_symbol_t.HETSYN -> [ ]
  | Recordpdb_symbol_t.FORMUL -> [ ]
  | Recordpdb_symbol_t.SITE -> [ ]
  | Recordpdb_symbol_t.DBREF -> [ ]
  | Recordpdb_symbol_t.DBREF1 -> [ ]
  | Recordpdb_symbol_t.DBREF2 -> [ ]
  | Recordpdb_symbol_t.SEQADV -> [ ]
  | Recordpdb_symbol_t.SEQRES -> [ 
      Fieldpdb_symbol_v.record_number;
      Fieldpdb_symbol_v.sequence_length;
      Fieldpdb_symbol_v.thirteen_names;
    ]
  | Recordpdb_symbol_t.MODRES -> [ ]
  | Recordpdb_symbol_t.HELIX -> [ ]
  | Recordpdb_symbol_t.SHEET -> [ ]
  | Recordpdb_symbol_t.HEADER -> [ 
      Fieldpdb_symbol_v.chemical_species;
      Fieldpdb_symbol_v.date;
      Fieldpdb_symbol_v.id_pdb;
      Fieldpdb_symbol_v.any;
    ]
  | Recordpdb_symbol_t.OBSLTE -> [ ]
  | Recordpdb_symbol_t.TITLE -> [ ]
  | Recordpdb_symbol_t.SPLIT -> [ ]
  | Recordpdb_symbol_t.CAVEAT -> [ ]
  | Recordpdb_symbol_t.COMPND -> [ ]
  | Recordpdb_symbol_t.SOURCE -> [ ]
  | Recordpdb_symbol_t.KEYWDS -> [ ]
  | Recordpdb_symbol_t.EXPDTA -> [ ]
  | Recordpdb_symbol_t.AUTHOR -> [ ]
  | Recordpdb_symbol_t.REVDAT -> [ ]
  | Recordpdb_symbol_t.SPRSDE -> [ ]
  | Recordpdb_symbol_t.JRNL -> [ ]
  | Recordpdb_symbol_t.REMARK -> [ ]
;;

(** {6 Iterating.} *)

let map f_s frm_smb_pkp =
  List.map f_s frm_smb_pkp 
;;

(** {6 Extracting.} *)

let fieldpdb_symbol_list_off_recordpdb_symbol_formula frm_smb_pkp =
  frm_smb_pkp
;;

let fieldpdb_symbol_list_off_recordpdb_symbol sym_pkp =
  make sym_pkp
;;
