(** {3 Domain_formula_t}  *)
(**   "Author : François Colonna 30 octobre 2018 at 09:41:05+01:00"; *)

(** {6 Typing} *)

type domain_formula =
  | Common of Category_tag_t.category_tag list 
  | Database of Category_tag_t.category_tag list 
  | Elementary of Category_tag_t.category_tag list 
  | Figure of Category_tag_t.category_tag list 
  | General of Category_tag_t.category_tag list
  | Generator of Category_tag_t.category_tag list 
  | Localinput of Category_tag_t.category_tag list 
  | Operator of Category_tag_t.category_tag list 
  | Primitive of Category_tag_t.category_tag list 
  | Property of Category_tag_t.category_tag list 
  | Prototype of Category_tag_t.category_tag list 
  | Skeleton of Category_tag_t.category_tag list 
  | Wavefunction of Category_tag_t.category_tag list 
;;
