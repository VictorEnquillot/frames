(** {6 Typing} *)
(**   "Author : François Colonna 31 octobre 2018 at 10:39:32+01:00"; *)

type domain_value =
  | Common of Category_value_t.category_value list 
  | Database of Category_value_t.category_value list 
  | Elementary of Category_value_t.category_value list 
  | Figure of Category_value_t.category_value list 
  | General of Category_value_t.category_value list
  | Generator of Category_value_t.category_value list 
  | Localinput of Category_value_t.category_value list 
  | Operator of Category_value_t.category_value list 
  | Primitive of Category_value_t.category_value list 
  | Property of Category_value_t.category_value list 
  | Prototype of Category_value_t.category_value list 
  | Skeleton of Category_value_t.category_value list 
  | Wavefunction of Category_value_t.category_value list 
;;
