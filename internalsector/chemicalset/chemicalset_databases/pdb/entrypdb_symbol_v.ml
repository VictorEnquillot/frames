(** {3 The Symbol functionnalities for an Entry of the Pdb.} *)

let nam_cod = "entrypdb_symbol_v.ml";;

(** {6 Extracting.} *)

let string_off_entrypdb = function
  | Entrypdb_symbol_t.ProteinID str -> str
  | Entrypdb_symbol_t.CofferID str -> str
;;

let name sym_enp =
  string_off_entrypdb sym_enp
;;

let print ppf sym_enp = 
  let str = string_off_entrypdb sym_enp in
  Format.fprintf ppf "%s" str
;;

let filename_of_entrypdb_symbol sym_enp = 
  let dir_str = Frames_directories_v.frames_directory_name_of_environment_variable "PDB" in
  let cnt_str = name sym_enp in
  let ext_str = ".pdb" in
  Filename_p.filename (dir_str ^ "/" ^ cnt_str ^ ext_str)
;;

let string_list_of_entrypdb_symbol sym_enp =
  (* TODO let fln = filename_of_clusterpdb_path pth_pkp in *)
  let fln = filename_of_entrypdb_symbol sym_enp in
  Fileio_v.string_list_of_filename fln
;;

let compare sym_enp_a sym_enp_b =
  String.compare (name sym_enp_a) (name sym_enp_b)
;;
