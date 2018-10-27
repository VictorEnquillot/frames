(** {3 Factorial_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Factorial_formula_t.Factorial _ ->
    Factorial_symbol_t.Factorial
;;


(** {6 Building_and_storing_proper_sons} *)

let build_n_store sym_fac soi_fac =

  let sym_fac_s = sym_fac in (* Interface *)
  let soi_fac_s = Sole_index_v.make 1 soi_fac in

  (* Factorial_symbol_by_sole_index_register_v.store soi_fac_s sym_fac_s;*)

  Singlet_v.make (Tag_v.make sym_fac_s soi_fac_s)
;;


(** {6 Making_for_formula} *)

let make sym_fac soi_fac =
  match sym_fac with
  | Factorial_symbol_t.Factorial ->
      let tag_fac_s = build_n_store sym_fac soi_fac in
        Factorial_formula_t.Factorial tag_fac_s
;;

(** {6 Retrieving_for_formula} *)

let retrieve tag_fac =
  let soi_fac = Tag_v.sole_index_off_tag tag_fac in
  let sym_fac = Tag_v.symbol_off_tag tag_fac in
  make sym_fac soi_fac
;;


(** {6 Builder_tag_datastructure_off_formula} *)

let factorial_tag_singlet_off_factorial_formula = function
  | Factorial_formula_t.Factorial tag_fac_s -> tag_fac_s
;;


(** {6 Builder_tag_datastructure_off_tag} *)

let factorial_tag_singlet_off_factorial_tag tag_fac =
  let for_fac = retrieve tag_fac in
  factorial_tag_singlet_off_factorial_formula for_fac
;;

(** {6 Data_tag_datastructure_off_formula} *)

let factorial_tag_singlet_off_factorial_formula = function
  | Factorial_formula_t.Factorial tag_fac_s -> tag_fac_s
;;

(** {6 Data_tag_datastructure_off_tag} *)

let factorial_tag_singlet_off_factorial_tag tag_fac =
  let for_fac = retrieve tag_fac in
  factorial_tag_singlet_off_factorial_formula for_fac
;;
