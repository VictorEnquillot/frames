(** {3 The functionalities for a Value for an Entity_proper of a Camlfile.}  *)

let nam_cod = "Entity_proper_value_v.ml";;

(** {6 Aliases} *)


(** {6 Making.} *)

let make tag_enp =
  let for_enp = Entity_proper_formula_v.retrieve tag_enp in
  Entity_proper_formula_v.map Contentfile_value_v.make for_enp
;;

(** {6 Writing.} *)

let write nam_dir tag_enp =
  let for_enp = Entity_proper_formula_v.retrieve tag_enp in
  List.iter (Contentfile_value_v.write nam_dir) for_enp 
;;

(** {6 Extracting.} *)

