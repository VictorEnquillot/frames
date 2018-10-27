(** {3 Camlparagraph_for_any_comment_value_t}  *)

(** {6 Typing} *)

type camlparagraph_for_any_comment_value =
  | Camlfile_title of Section_value_t.section_value list          (* (** {3 Module} *) *)
  | Ending of Section_value_t.section_value list                  (* Generator version and date *)
  | Item_title of Section_value_t.section_value list              (* (** {6 Item title} *) *)
  | Empty 
;;
