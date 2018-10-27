(** {3 The functionalities for a Tag for a Item_each_grandson_notleaf}  *)

let nam_cod = "Item_each_grandson_notleaf_tag_v.ml";;

(** {6 Aliasing} *)

(** {6 Naming} *)

(** {6 Tupling} *)

let item_for_symbol_each_grandson_notleaf_sextup_off_item_for_symbol_each_grandson_notleaf_tag tag_iat =
  let sym_iat = Tag_v.entity_off_tag tag_iat in
  let tag_ite = Item_tag_v.item_tag_of_item_for_symbol_each_grandson_notleaf_tag tag_iat in
  let sex_ite = Item_tag_v.item_sextup_off_item_tag tag_ite in
  let qui_usf = Sextuplet_v.right_quintuplet_off_sextuplet sex_ite in
  Sextuplet_v.make_of_left_of_quintuplet sym_iat qui_usf
;;
