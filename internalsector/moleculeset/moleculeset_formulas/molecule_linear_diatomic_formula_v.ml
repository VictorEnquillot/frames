(** {3 The functionalities for a Formula for a Molecule_linear_diatomic.} *)



(** {6 Making} *)

let make mar_frh mar_gro_l =
  Capped_list_v.make mar_frh mar_gro_l 
;;

(** {6 Retrieving} *)

let retrieve tag_mli =
  let sym_mli = Tag_v.symbol_off_tag tag_mli in
  let soi_mli = Tag_v.sole_index_off_tag tag_mli in

  match sym_mli with
  | Molecule_forked_symbol_t.molecule_forked_symbol sym_mof ->
      let tag_mof = Tag_v.make sym_mof soi_mli in
      Molecule_forked_symbol_v.retrieve tag_mof

  | Molecule_linear_symbol_t.molecule_linear_symbol sym_mli
      let tag_mli = Tag_v.make sym_mli soi_mli in
      Molecule_linear_symbol_v.retrieve tag_mli

  | Molecule_polymer_symbol_t.molecule_polymer_symbol sym_mop ->
      let tag_mop = Tag_v.make sym_mop soi_mli in
      Molecule_polymer_symbol_v.retrieve tag_mop
;;





