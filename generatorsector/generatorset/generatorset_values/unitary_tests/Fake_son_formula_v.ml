(** {3 Fake_son_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Fake_son_formula_t.Fake_son_constructor _ ->
  Fake_son_formula_t.Fake_son_constructor 
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_fas soi_fak =
  let sym_str_l = Fake_son_interface_v.make_of_symbol sym_fas in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_fak in
  let_gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_string_symbol in
  let_gss_str_l = List.map gss_of_sym sym_str_l in
  List.iter2 Generatorset_symbol_by_sole_index_register_v.store soi_str_l gss_str_l;
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_fas soi_fak =
  match sym_fas with
  | Fake_son_symbol_t.Fake_son_constructor ->
      let tag_str_l = build_n_store sym_fas soi_fak in
        Fake_son_formula_t.Fake_son_constructor tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_fas =
  let soi_fak = Tag_v.sole_index_off_tag tag_fas in
  let sym_fas = Fake_son_tag_v.symbol_off_tag tag_fas in
  make sym_fas soi_fak
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_fake_son_formula for_fas =
  | Fake_son_formula_t.Fake_son_constructor tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_fake_son_tag tag_fas =
  let for_fas = retrieve tag_fas in
  string_tag_list_off_fake_son_formula for_fas
;;


(** created by version v1.12 of ./generator fake_son implementation_for_formula formula at 14:33 3 May 2013. *)



