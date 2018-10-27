(** {3 Usagefile_for_symbol_v}  *)

let nam_cod = "Usagefile_for_symbol_tag_v.ml";;

(** {6 Naming} *)

(** {6 Tupling} *)

let usagefile_for_symbol_quitup_off_usagefile_for_symbol_tag tag_uim =
  let sym_uim = Tag_v.entity_off_tag tag_uim in
  let tag_usf = Usagefile_tag_v.usagefile_tag_of_usagefile_for_symbol_tag tag_uim in
  let qui_usf = Usagefile_tag_v.usagefile_quitup_off_usagefile_tag tag_usf in
  let qua_usf = Quintuplet_v.right_quadruplet_off_quintuplet qui_usf in
  Quintuplet_v.make_of_left_of_quadruplet sym_uim qua_usf
;;
