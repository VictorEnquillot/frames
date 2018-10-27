
(** {6 Typing} *)

type entity_proper_value =
  | Entity_proper_with_one_son of string * (Contentfile_value_t.contentfile_value list) 
  | Entity_proper_with_sons of string * (Contentfile_value_t.contentfile_value list) 
;;
