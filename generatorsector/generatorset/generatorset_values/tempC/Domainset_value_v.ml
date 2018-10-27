(** {3 The functionalities for a Value for an Domainset of a Camlfile.}  *)

let nam_cod = "Domainset_value_v.ml";;

(** {6 Aliases} *)

(** {6 Making.} *)

let make tag_dos =
  let for_dos = Domainset_formula_v.retrieve tag_dos in
  Domainset_formula_v.map Category_value_v.make for_dos
;;

(** {6 Writing.} *)

let write nam_dir_dos tag_dos =
  let for_dos = Domainset_formula_v.retrieve tag_dos in
  List.iter (Category_value_v.write nam_dir_dos) for_dos 
;;

(** {6 Extracting.} *)

