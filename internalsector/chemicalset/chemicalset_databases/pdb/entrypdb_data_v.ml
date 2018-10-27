(** {3 The functionalities a Value for an Entry of the Pdb} *)

let nam_cod = "entrypdb_data_v.ml";;

(** {6 Making.} *)

let make sym_enp =  (* the full file as a list of string. *)
  (* TODO let fln = filename_of_clusterpdb_path pth_pkp in *)
  let fln = Entrypdb_symbol_v.filename_of_entrypdb_symbol sym_enp in
  let str_l = Fileio_v.string_list_of_filename fln in
  Doublet_v.make sym_enp str_l
;;

(** {6 Extracting.} *)

let string_list_off_entrypdb_data dat_enp = 
  Doublet_v.right_off_doublet dat_enp
;;

let string_list_off_entrypdb_symbol sym_enp = 
  let dat_enp = make sym_enp in
  string_list_off_entrypdb_data dat_enp 
;;

let entrypdb_symbol_off_entrypdb_data dat_enp = 
  Doublet_v.left_off_doublet dat_enp
;;
