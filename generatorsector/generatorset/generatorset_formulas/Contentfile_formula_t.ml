(** {3 The Formula for an Contentfile.}  *)

(** {6 Aliasing} *)


(** {6 Typing} *)

type contentfile_formula =
  | Type_alone of Usagefile_tag_t.usagefile_tag list
  | Type_n_value of Usagefile_tag_t.usagefile_tag list
  | Value_alone of Usagefile_tag_t.usagefile_tag list
;;
