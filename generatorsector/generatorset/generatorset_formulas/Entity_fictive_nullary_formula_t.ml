(** {6 Typing} *)

type entity_fictive_nullary_formula = 
  | Entity_fictive_nullary_empty of Contentfile_tag_t.contentfile_tag list
  | Sonnullary of string * Contentfile_tag_t.contentfile_tag list
  | Nonsonnullary of string * Contentfile_tag_t.contentfile_tag list
;;
