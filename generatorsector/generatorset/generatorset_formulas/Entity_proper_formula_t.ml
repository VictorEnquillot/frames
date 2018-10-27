type entity_proper_formula =
  | Entity_proper_with_one_son of string * Contentfile_tag_t.contentfile_tag list
  | Entity_proper_with_sons of string * Contentfile_tag_t.contentfile_tag list
;;
