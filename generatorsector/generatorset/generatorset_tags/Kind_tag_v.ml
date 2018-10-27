(** {3 The functionalities for a Tag for a Kind}  *)

let nam_cod = "Kind_tag_v.ml";;

(** {6 Aliasing} *)


(** {6 Making} *)

let make sym_kin soi_kin =
  Tag_v.make sym_kin soi_kin
;;

(** {6 Naming} *)

let name tag_kin =
  let sym_kin = Tag_v.entity_off_tag tag_kin in
  Kind_symbol_v.name sym_kin
;;

let longname tag_kin =
  Format.sprintf "Kind_tag_t.%s" (String.capitalize (name tag_kin))
;;

let string_off tag_kin =
  let sym_kin = Tag_v.entity_off_tag tag_kin in
  Kind_symbol_v.string_off sym_kin
;;

let fullname tag_kin =
  Format.sprintf "%s \"%s\"" (longname tag_kin) (string_off tag_kin)
;;

(** {6 Extracting upwards} *)

(* let category_tag_off_kind_tag tag_kin = *)
(*   let soi_kin = Tag_v.sole_index_off_tag tag_kin in *)
(*   let soi_upp = List.tl soi_kin in *)
(*   let gss_cat = Generatorset_symbol_by_sole_index_provider_v.provide soi_upp in *)
(*   let sym_cat =  *)
(*     try Generatorset_symbol_v.category_symbol_off_generatorset_symbol gss_cat *)
(*     with Failure "category_symbol_off_generatorset_symbol" -> *)
(*       Error_messages_v.print_fatal_error *)
(* 	nam_cod "category_symbol_off_generatorset_symbol" *)
(*         "Category Symbol" *)
(*         (Format.sprintf "Generator_symbol >%s<" (Generatorset_symbol_v.name gss_cat)) *)
(*         "Check"  *)
(*   in *)
(*   Tag_v.make sym_cat soi_upp *)
(* ;; *)

(* let localset_tag_off_kind_tag tag_kin = *)
(*   let tag_cat = category_tag_off_kind_tag tag_kin in *)
(*   Category_tag_v.localset_tag_off_category_tag tag_cat  *)
(* ;; *)

(** {6 Extracting downwards} *)

