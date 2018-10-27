(** {3 The Functionalities for a Formula for a Molecule.} *)

(** {6 Aliasing} *)

(** {6 Retrieving} *)

let retrieve tag_mol =
  let sym_mol = Tag_v.symbol_off_tag tag_mol in
  let soi_mol = Tag_v.sole_index_off_tag tag_mol in

  match sym_mol with
  | Molecule_forked_symbol_t.molecule_forked_symbol sym_mof ->
      let tag_mof = Tag_v.make sym_mof soi_mol in
      Molecule_forked_symbol_v.retrieve tag_mof

  | Molecule_linear_symbol_t.molecule_linear_symbol sym_mli
      let tag_mli = Tag_v.make sym_mli soi_mol in
      Molecule_linear_symbol_v.retrieve tag_mli

  | Molecule_polymer_symbol_t.molecule_polymer_symbol sym_mop ->
      let tag_mop = Tag_v.make sym_mop soi_mol in
      Molecule_polymer_symbol_v.retrieve tag_mop
;;

(** {6 Making} *)

(** {6 Extracting.} *)

let molecule_forked_formula_off_molecule_formula = function
  | Molecule_formula_t.Molecule_forked_formula for_mof -> for_mof
  | for_moe -> Error_messages_v.print_fatal_error
      nam_cod "molecule_forked_formula_off_molecule_formula"
      "Molecule_forked_formula"
      (name for_moe) "check"
;;

let molecule_linear_formula_off_molecule_formula = function
  | Molecule_formula_t.Molecule_linear_formula for_mol -> for_mol
  | for_moe -> Error_messages_v.print_fatal_error
      nam_cod "molecule_linear_formula_off_molecule_formula"
      "Molecule_linear_formula"
      (name for_moe) "check"
;;

let molecule_polymer_formula_off_molecule_formula = function
  | Molecule_formula_t.Molecule_polymer_formula for_mof -> for_mof
  | for_moe -> Error_messages_v.print_fatal_error
      nam_cod "molecule_polymer_formula_off_molecule_formula"
      "Molecule_polymer_formula"
      (name for_moe) "check"
;;

(** {6 Upgrading.} *)

(** {6 Iterating.} *)

let iter = function
  | Molecule_forked_formula_t.molecule_forked_formula for_mof ->
      Molecule_forked_formula_v.iter for_mof
  | Molecule_linear_formula_t.molecule_linear_formula for_mli ->
      Molecule_linear_formula_v.iter for_mli
  | Molecule_polymer_formula_t.molecule_polymer_formula for_mop ->
      Molecule_polymer_formula_v.iter for_mop
;;

let map = function
  | Molecule_forked_formula_t.molecule_forked_formula for_mof ->
      Molecule_forked_formula_v.map for_mof
  | Molecule_linear_formula_t.molecule_linear_formula for_mli ->
      Molecule_linear_formula_v.map for_mli
  | Molecule_polymer_formula_t.molecule_polymer_formula for_mop ->
      Molecule_polymer_formula_v.map for_mop
;;

let iter2 for_mol_1 = 
  | Molecule_forked_formula_t.molecule_forked_formula for_mof_2 ->
      let for_mof_1 = 
	molecule_forked_formula_off_molecule_formula for_mol_1
      in
      Molecule_forked_formula_v.iter2 for_mof_1 for_mof_2 
  | Molecule_linear_formula_t.molecule_linear_formula for_mli_2 ->
      let for_mli_1 = 
	molecule_linear_formula_off_molecule_formula for_mol_1
      in
      Molecule_linear_formula_v.iter2 for_mli_1 for_for_mli_2
  | Molecule_polymer_formula_t.molecule_polymer_formula for_mop_2 ->
      let for_mof_1 = 
	molecule_polymer_formula_off_molecule_formula for_mol_1
      in
      Molecule_polymer_formula_v.iter2 for_mop_1 for_mop_2
;;

let map2 for_mol_1 = 
  | Molecule_forked_formula_t.molecule_forked_formula for_mof_2 ->
      let for_mof_1 = 
	molecule_forked_formula_off_molecule_formula for_mol_1
      in
      Molecule_forked_formula_v.map2 for_mof_1 for_mof_2 
  | Molecule_linear_formula_t.molecule_linear_formula for_mli_2 ->
      let for_mli_1 = 
	molecule_linear_formula_off_molecule_formula for_mol_1
      in
      Molecule_linear_formula_v.map2 for_mli_1 for_for_mli_2
  | Molecule_polymer_formula_t.molecule_polymer_formula for_mop_2 ->
      let for_mof_1 = 
	molecule_polymer_formula_off_molecule_formula for_mol_1
      in
      Molecule_polymer_formula_v.map2 for_mop_1 for_mop_2
;;


