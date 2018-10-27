(** {6 Typing} *)

type camlline_constant_value_formula =
  | Val_name_colon of Entity_tag_t.entity_tag list            (* val name : *)
  | Val_print_colon of Entity_tag_t.entity_tag list           (* val print : *)
  | Format_formatter_arrow of Entity_tag_t.entity_tag list    (* Format.formatter -> *)
;;
