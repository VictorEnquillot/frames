(** {3 The functionalities a Value for an Section of the Pdb} *)

let nam_cod = "Sectionpdb_data_v";;

let has_of_packpdb_keypdb_of_packpdb_data sym_pkp str_rct =
  let str_6 = Scanf.sscanf (Clusterpdb_symbol_v.name sym_pkp) "%s " (fun s -> s) in
  let str_6u = String.uppercase str_6 in
  let str_r = Scanf.sscanf str_rct "%6s" (fun s -> s) in
  str_r = str_6u
;;

let extract_clusterpdb_n_remainder_of_clusterpdb_symbol_of_string_list sym_pkp str_l = 
  let prd = has_of_packpdb_keypdb_of_packpdb_data sym_pkp  in
  List_v.extract_head_list_n_remainder_of_predicate_of_list prd str_l
;;

(** {6 Extracting.} *)

(*
let make_clusterpdb_path sym_pkp sym_scp = (*** TODO use real path *)
  sym_pkp :: [smb_scp] 
;;

let value sym_scp =  (*** TODO should be path *)
  let frm_smb_scp = Clusterpdb_symbol_formula_v.make sym_scp in
  let frm_pth_scp =
    Clusterpdb_symbol_formula_v.map (fun s -> make_clusterpdb_path s sym_scp) 
      frm_smb_scp in
  Clusterpdb_symbol_formula_v.map Recordpdb_data_v.provide frm_pth_scp
;;

*)
