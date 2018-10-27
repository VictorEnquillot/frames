(** {6 Typing} *)

type camlparagraph_for_any_comment_formula =
  | Camlfile_title of Section_tag_t.section_tag list          (* (** {3 Module} *) *)
  | Empty of Section_tag_t.section_tag list                   (* Empty Paragraph *)
  | Ending of Section_tag_t.section_tag list                  (* Generator version and date *)
  | Item_title of Section_tag_t.section_tag list              (* (** {6 Item title} *) *)
;;





