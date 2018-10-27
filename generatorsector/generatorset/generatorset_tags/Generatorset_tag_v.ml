(** {3 The Functionalities for a Tag for an Localset}  *)

let nam_cod = "localset_tag_off_any_tag_v.ml";;

(** {6 Making} *)

let make sym_dos soi_dos =
  Tag_v.make sym_dos soi_dos
;;

(** {6 Naming} *)

let name_of_symbol tag_dos =
  let sym_dos = Tag_v.entity_off_tag tag_dos in
  Generatorset_symbol_v.name sym_dos
;;

