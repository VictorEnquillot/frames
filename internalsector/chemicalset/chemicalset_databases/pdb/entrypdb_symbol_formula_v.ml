(** {3 The functionalities fro a Constrained Symbol Formula for an Entry of the Pdb} *)

let nam_cod = "Entrypdb_symbol_formula_v";;

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect2.html#TITLE}
        http://www.wwpdb.org/documentation/format32/sect2.html#TITLE}
    
    A entry contains Sections organized in a well defined list order.
*)


(** {6 Making.} *)

let make = function  
  | Entrypdb_symbol_t.ProteinID _
  | Entrypdb_symbol_t.CofferID _ ->
      [  (* Order matters *)
       Sectionpdb_symbol_v.title_sectionpdb_symbol;
       Sectionpdb_symbol_v.primary_structure_sectionpdb_symbol; 
       Sectionpdb_symbol_v.heterogen_sectionpdb_symbol; 
       Sectionpdb_symbol_v.secondary_structure_sectionpdb_symbol; 
       Sectionpdb_symbol_v.connectivity_annotations_sectionpdb_symbol; 
       Sectionpdb_symbol_v.miscellaneous_features_sectionpdb_symbol; 
       Sectionpdb_symbol_v.coordinate_transformation_sectionpdb_symbol; 
       Sectionpdb_symbol_v.crystallographic_sectionpdb_symbol; 
       Sectionpdb_symbol_v.coordinate_sectionpdb_symbol; 
       Sectionpdb_symbol_v.connectivity_sectionpdb_symbol; 
       Sectionpdb_symbol_v.bookkeeping_sectionpdb_symbol;
     ] 
;;	

(** {6 Iterating.} *)

let map f_s frm_smb_enp =
  List.map f_s frm_smb_enp 
;;

(** {6 Extracting.} *)

let sectionpdb_symbol_list_off_entrypdb_symbol_formula frm_smb_enp =
  frm_smb_enp
;;

let sectionpdb_symbol_list_off_entrypdb_symbol sym_enp =
  make sym_enp
;;

let clusterpdb_symbol_list_off_entrypdb_symbol_formula frm_smb_enp =
  let sym_scp_l = 
    sectionpdb_symbol_list_off_entrypdb_symbol_formula 
      frm_smb_enp in
  let sym_pkp_ll = List.map
      Sectionpdb_symbol_formula_v.clusterpdb_symbol_list_off_sectionpdb_symbol
      sym_scp_l in
  List.flatten sym_pkp_ll
;;

let clusterpdb_symbol_list_off_entrypdb_symbol sym_enp =
  let frm_smb_enp = make sym_enp in
  clusterpdb_symbol_list_off_entrypdb_symbol_formula frm_smb_enp
;;
