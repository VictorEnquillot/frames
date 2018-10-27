(** {6 Typing} *)
type domain_value =
  | Chemical of Category_value_t.category_value list
  | Common of Category_value_t.category_value list
  | Database of Category_value_t.category_value list
  | Elementary of Category_value_t.category_value list
  | Fake of Category_value_t.category_value list
  | Figure of Category_value_t.category_value list
  | Generator of Category_value_t.category_value list
  | Input of Category_value_t.category_value list
  | Logic of Category_value_t.category_value list
  | Music of Category_value_t.category_value list
  | Natural of Category_value_t.category_value list
  | Operator of Category_value_t.category_value list
  | Property of Category_value_t.category_value list

	(* | Model of Category_value_t.category_value list *)
	(* | Molecule of Category_value_t.category_value list *)
	(* | Forcefield of Category_value_t.category_value list *)
	(* | Physical of Category_value_t.category_value list *)
	(* | Primitive of Category_value_t.category_value list *)
	(* | Prototype of Category_value_t.category_value list *)
	(* | Simulation of Category_value_t.category_value list *)
	(* | Wavefunction of Category_value_t.category_value list *)
	(* | Wikitool of Category_value_t.category_value list *)
;;
