(** {3 Domain_formula_t}  *)

(** {6 Typing} *)

type domain_formula =
  | Chemical of Category_tag_t.category_tag list
  | Common of Category_tag_t.category_tag list
  | Database of Category_tag_t.category_tag list
  | Elementary of Category_tag_t.category_tag list
  | Fake of Category_tag_t.category_tag list
  | Figure of Category_tag_t.category_tag list
  | Generator of Category_tag_t.category_tag list
  | Input of Category_tag_t.category_tag list
  | Logic of Category_tag_t.category_tag list
  | Music of Category_tag_t.category_tag list
  | Natural of Category_tag_t.category_tag list
  | Operator of Category_tag_t.category_tag list
  | Property of Category_tag_t.category_tag list

	(* | Model of Category_tag_t.category_tag list *)
	(* | Molecule of Category_tag_t.category_tag list *)
	(* | Forcefield of Category_tag_t.category_tag list *)
	(* | Physical of Category_tag_t.category_tag list *)
	(* | Primitive of Category_tag_t.category_tag list *)
	(* | Prototype of Category_tag_t.category_tag list *)
	(* | Simulation of Category_tag_t.category_tag list *)
	(* | Wavefunction of Category_tag_t.category_tag list *)
	(* | Wikitool of Category_tag_t.category_tag list *)
;;
