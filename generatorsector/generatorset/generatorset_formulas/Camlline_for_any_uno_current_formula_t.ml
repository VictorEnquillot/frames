(** {6 Typing} *)

type camlline_for_any_uno_current_formula =
  | Left_off_doublet of Entity_tag_t.entity_tag list  
  | Left_off_triplet of Entity_tag_t.entity_tag list  
  | Middle_off_triplet of Entity_tag_t.entity_tag list  
  | Right_off_doublet of Entity_tag_t.entity_tag list  
  | Right_off_triplet of Entity_tag_t.entity_tag list  
  | Double_quote_current of Entity_tag_t.entity_tag list  
;;

